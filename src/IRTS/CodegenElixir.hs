{-# LANGUAGE NamedFieldPuns #-}

module IRTS.CodegenElixir(codegenElixir) where

import           Control.Monad.Trans.State.Lazy
import           Data.Char
import           Data.List
import qualified Data.Map                       as M
import qualified Data.Set                       as S
import qualified Data.Text                      as T
import           Idris.Core.TT
import           IRTS.CodegenCommon
import           IRTS.Lang
import           Util.PrettyPrint

data DefState = DefState
  { fullArity    :: Int
  , partialsUsed :: S.Set Int
  } deriving (Show)

-- Codegen state within one Decl
data CGState = CGState
    { varCounter :: Int          -- for fresh variables
    , defs       :: M.Map Name DefState
    }
    deriving (Show)

-- Make the distinction for the humans reading the code
type Stmts = Doc  -- statements
type Expr  = Doc  -- expressions

fresh :: State CGState LVar
fresh = do
  s <- get
  let vc = varCounter s
  put $ s { varCounter = vc + 1}
  pure (Loc (-vc))

resetVarCounter :: State CGState ()
resetVarCounter = do
  s <- get
  put $ s { varCounter = 1}

getDefState :: Name -> State CGState (Maybe DefState)
getDefState n = do
  s <- get
  pure (M.lookup n (defs s))

recordPartialUse :: Name -> Int -> State CGState ()
recordPartialUse f n = do
  s <- get
  let ds = defs s
  case M.lookup f ds of
    Nothing -> pure () -- TODO: throw an exception here?
    Just defS -> do
      let partials = S.insert n (partialsUsed defS)
      put $ s { defs = M.insert f (defS { partialsUsed = partials }) ds }

indent :: Doc -> Doc
indent = nest 2

makeDefsState :: [(Name, LDecl)] -> M.Map Name DefState
makeDefsState ds = M.fromList
  [ (n, DefState (length args) S.empty) | (n,d) <- ds, args <- isFun d ]
  where
    isFun (LFun _ _ args _) = [args]
    isFun _                 = []

codegenElixir :: CodeGenerator
codegenElixir ci = do
  let definitions = liftDecls ci
  let initState = CGState 1 (makeDefsState definitions)
  let (ds, st) = runState (traverse elixirDef definitions) initState
  let elixirDefs = vcat ds
  let partials = makePartials st
  let f =     topComment
          $+$ helperModule
          $+$ text ""
          $+$ text "defmodule IdrisElixir do"
          $+$ indent elixirDefs
          $+$ indent partials
          $+$ text "end"
          $+$ text ""
          $+$ start
  writeFile (outputFile ci) (render "#" (removeEmptyLineWS f))
  where
    topComment = text "# This file was compiled by idris-elixir."
    start = text "IdrisElixir.runMain0()"

makePartials :: CGState -> Doc
makePartials st =
    let ds = filter hasPartials (M.toList (defs st))
        ps = makePartialsFor <$> ds
    in vcat ps
  where
    hasPartials (_, DefState { partialsUsed }) = not $ S.null partialsUsed
    makePartialsFor (name, DefState { fullArity, partialsUsed }) =
      vcat [ makePartial (cgName name) fullArity numArgs | numArgs <- S.toList partialsUsed ]
    givenArgs n = [ text "givenArg" <> text (show i) | i <- [0..(n - 1)]]
    restArgs n = [ text "restArg" <> text (show i) | i <- [0..(n - 1)]]
    makePartial name full numArgs =
      let givens = givenArgs numArgs
          rest   = restArgs (full - numArgs)
      in defFunction
          (name <> text "_partial" <> text (show numArgs))
          givens
          (defLambda rest (defFunApp name (givens ++ rest)))

helperModule :: Doc
helperModule = vcat . fmap text $
  [ "defmodule IdrisHelper do"
  , "  def error(s) do"
  , "    IO.puts (\"there was an error: \" <> s)"
  , "  end"
  , "end"
  , ""
  , "defmodule IdrisRts do"
  , "  def force(x) do"
  , "    case x do"
  , "      {:idris_lazy, _, val} -> val"
  , "      {:idris_lazy, thunk} -> thunk.()"
  , "      _ -> x"
  , "      #_ -> raise(\"tried to force a non lazy value: \" <> Kernel.inspect(x))"
  , "    end"
  , "  end"
  , "end"
  ]

-- Let's not mangle /that/ much. Especially function parameters
-- like e0 and e1 are nicer when readable.
cgName :: Name -> Expr
cgName (MN i n) | all (\x -> isAlpha x || x `elem` "_") (T.unpack n)
    = text $ T.unpack n ++ show i
cgName n = text (elixirName n) -- <?> show n  -- uncomment this to get a comment for *every* mangled name

cgVar :: LVar -> Expr
cgVar (Loc  i)
    | i >= 0    = text "loc" <> int i
    | otherwise = text "aux" <> int (-i)
cgVar (Glob n) = cgName n

thunk :: Doc -> Doc
thunk body =
  text "fn ->"
  $+$ indent body
  $+$ text "end"

defLambda :: [Doc] -> Doc -> Doc
defLambda args body =
      text "fn " <> text "(" <+> commaSeperated args <+> text ") ->"
  $+$ indent (text "IO.puts \"in: anonymous\"" $+$ body)
  $+$ text "end"

defFunction :: Doc -> [Doc] -> Doc -> Doc
defFunction name args body =
      text "#" <+> name
  $+$ text "def " <> name <> text "(" <+> commaSeperated args <+> text ") do"
  $+$ indent (text "IO.puts \"in:" <+> name <> text "\"" $+$ body)
  $+$ text "end"

cgCon :: Doc -> [Doc] -> Doc
cgCon name args =
  text "{" <> commaSeperated ((text ":" <> name) : args) <> text "}"

elixirDef :: (Name, LDecl) -> State CGState Doc
elixirDef (name, decl) = do
  resetVarCounter
  case decl of
    LConstructor{} -> pure empty
    LFun _ _ arguments body -> do
      let argNames = cgName <$> arguments
      (stmts, retV) <- cgBody body
      pure $
            text ""
        $+$ multiLineComment (show decl)
        $+$ text ""
        $+$
        defFunction
          (cgName name)
          argNames
          (stmts $+$ retV)
  -- where
  --   args a = [text ("con_arg_" ++ show i) | i <- [0..(a - 1)]]

cgAssign :: Doc -> Expr -> Stmts
cgAssign v e = v <+> text "=" <+> e

commaSeperated :: [Doc] -> Doc
commaSeperated xs = foldr (<>) (text "") (intercalate [text ", "] (pure <$> xs))

defFunApp :: Doc -> [Doc] -> Doc
defFunApp f xs = f <> text "(" <+> commaSeperated xs <+> text ")"

fnApp :: Doc -> [Doc] -> Doc
fnApp f [] = f <> text ".()"
fnApp f [x] = f <> text ".(" <+> x <+> text ")"
fnApp f (x:xs) = fnApp (fnApp f [x]) xs

cgBody :: LExp -> State CGState (Stmts, Expr)
cgBody body = case body of
  LV v -> pure (empty, cgVar v)
  LCase _ e alts -> do
    scrutV <- fresh
    (scrutStmts, scrut) <- cgBody e
    caseVar <- fresh
    as <- traverse cgAlt alts
    let cbody =     text "case " <> cgVar scrutV <> text " do"
                $+$ indent (vcat as)
                $+$ text "end"
    let stmts =     scrutStmts
                $+$ cgAssign (cgVar scrutV) scrut
                $+$ cgAssign (cgVar caseVar) cbody
    pure (stmts, cgVar caseVar)
  lapp@(LApp _ (LV (Glob f)) args) -> do
    ds_ <- getDefState f
    xs <- traverse prepArg args
    let stmts = vcat (fst <$> xs)
    let argEs = snd <$> xs
    let numArgs = length args
    case ds_ of
      Nothing -> pure
        (stmts, fnApp (cgName f) argEs)
        --(empty, text ("UNIM APP : " ++ betterShow lapp))
      Just ds ->
        case compare (fullArity ds) numArgs of
          -- Full application:
          EQ -> pure
            (stmts, defFunApp (cgName f) argEs)
          -- Partial application:
          GT -> do
            recordPartialUse f numArgs
            pure (stmts, defFunApp (cgName f <> text "_partial" <> text (show numArgs)) argEs)
          -- Over application:
          LT -> do
            func <- fresh
            let funcVar = cgAssign (cgVar func) (defFunApp (cgName f) (take (fullArity ds) argEs))
            pure (stmts $+$ funcVar, fnApp (cgVar func) (drop (fullArity ds) argEs))
  LApp _ e args -> pure (empty, text $ "UNIM LApp - " ++ show e ++ " - " ++ show args)
    -- do
    --   (ss, f) <- cgBody e
    --   xs <- traverse cgBody args
    --   pure (ss $+$ vcat (fst <$> xs), fnApp f (snd <$> xs))
  LLazyApp n args -> do
      (ss, b) <- cgBody (LApp False (LV (Glob n)) args)
      pure (ss, text "{:idris_lazy, " <> thunk (ss $+$ b) <> text "}")
  LForce (LLazyApp n args) -> cgBody (LApp False (LV (Glob n)) args)
  LForce e -> do
    (ss, b) <- cgBody e
    pure (ss, text "IdrisRts.force(" <> b <> text ")")
  LLet n x e -> do
    (ss , xb) <- cgBody x
    (ss', eb) <- cgBody e
    let stmts = ss
                $+$ cgAssign (cgName n) xb
                $+$ ss'
    pure (stmts, eb)
  LProj _ _ -> pure (empty, text "UNIM PROJ")
  LCon _ _ n es -> do
    xs <- traverse cgBody es
    let ss = vcat $ fst <$> xs
    pure (ss, cgCon (cgName n) (snd <$> xs))
  LConst c -> pure (empty, cgConst c)
  LForeign{} -> pure (empty, text "UNIM FOREIGN")
  LOp prim args -> do
    as <- traverse cgBody args
    pure (vcat (fst <$> as), cgOp prim (snd <$> as))
  LNothing -> pure (empty, text ":idris_nothing")
  LError s -> pure (empty, text ("\"ERROR: " ++ s ++ "\""))
  _ -> pure (empty, text "UNIM SOMETHING ELSE")

betterShow :: LExp -> String
betterShow (LApp _ f args) = "functionApplication{ func: " ++ show f ++ ", numArgs: " ++ show (length args) ++ ", args: " ++ show args ++ "}"
betterShow x = show x

-- | Arguments which are references to global functions need to be treated
-- differently.
prepArg :: LExp -> State CGState (Stmts, Expr)
prepArg (LV (Glob f)) = do
  ds_ <- getDefState f
  case ds_ of
    Just ds -> case compare 1 (fullArity ds) of
      EQ -> do
        x <- fresh
        pure (empty, text "fn (" <> cgVar x <> text ") -> " <> cgName f <> text "(" <> cgVar x <> text ") end")
      LT -> pure (empty, text "ERROR UNIM")
      GT -> pure (empty, text "ERROR UNIM")
    Nothing -> cgBody (LV (Glob f))
prepArg x = cgBody x

cgAlt :: LAlt -> State CGState Expr
cgAlt (LConCase _ n ns e) = do
  (ss, b) <- cgBody e
  pure $     --text "#" <+> text (show alt) $+$
             cgCon (cgName n) (cgName <$> ns) <> text " ->"
         $+$ indent (ss $+$ b)
cgAlt (LConstCase con e) = do
  let c = cgConst con
  (ss, b) <- cgBody e
  pure $
             --text "#" <+> text (show alt) $+$
             c <+> text "->"
         $+$ indent (ss $+$ b)
cgAlt (LDefaultCase e) = do
  (ss, b) <- cgBody e
  pure $
        text "_ ->"
    $+$ indent (ss $+$ b)

cgOp :: PrimFn -> [Doc] -> Doc
cgOp pf es =
    case (es, pf) of
      (as, LPlus _)      -> bi as "+"
      (as, LMinus _)     -> bi as "-"
      (as, LTimes _)     -> bi as "*"
      (as, LStrConcat)   -> bi as "<>"
      (as, LStrEq)       -> bi as "=="
      (as, LEq _)        -> bi as "=="
      ([e], LExternal _) -> e -- TODO: Not sure what this is
      ([_,s], LWriteStr) -> text "IO.puts(" <+> s <+> text ")"
      ([i], LIntStr ITNative) -> text "to_string(" <+> i <+> text ")"
      (_, op)           -> text $ "raise(\"UNIM PRIM OP NOT IMPLEMENTED: " ++ show op ++ "\")"
  where
    bi [x,y] sym = x <+> text sym <+> y
    bi _ _       = text "ERROR UNIM"

cgConst :: Const -> Doc
cgConst c = text $ case c of
  I i   -> show i
  BI i  -> show i
  Fl d  -> show d
  Ch ch -> show ch
  Str s -> show s
  _     -> "!UNIM! constant: " ++ show c

elixirName :: Name -> String
elixirName n = "i_" ++ concatMap elixirChar (show n)
  where
    elixirChar x = case x of
      '.' -> "_d_"
      '_' -> "_"
      '{' -> "_lc_"
      '}' -> "_rc_"
      '(' -> "_lp_"
      ')' -> "_rp_"
      ' ' -> "_s_"
      '&' -> "_and_"
      ':' -> "_colon_"
      '\'' -> "_prime_"
      ',' -> "_c_"
      '=' -> "_eq_"
      '<' -> "_lt_"
      '>' -> "_gt_"
      '!' -> "_bang_"
      '@' -> "_at_"
      c | isAlpha c || isDigit c -> [c]
        | otherwise              -> "_" ++ show (fromEnum x) ++ "_"
