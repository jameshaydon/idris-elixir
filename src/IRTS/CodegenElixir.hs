{-# LANGUAGE NamedFieldPuns    #-}
{-# LANGUAGE OverloadedStrings #-}

module IRTS.CodegenElixir(codegenElixir) where

import Data.Monoid
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

    givenArgs n = text <$> [ "givenArg" ++ show i | i <- [0..(n - 1)]]
    restArgs  n = text <$> [ "restArg"  ++ show i | i <- [0..(n - 1)]]

    makePartial name full numArgs =
      let givens = givenArgs numArgs
          rest   = restArgs (full - numArgs)
      in defFunction
          (name <> text "_partial" <> text (show numArgs))
          givens
          (defLambda rest (defFunApp name (givens ++ rest)))

helperModule :: Doc
helperModule = vcat . fmap text $
  [ "defmodule IdrisRts do"
  , "  def force(x) do"
  , "    case x do"
  , "      {:idris_lazy, _, val} -> val"
  , "      {:idris_lazy, thunk} -> thunk.()"
  , "      _ -> x"
  , "    end"
  , "  end"
  , ""
  , "  def receive_any() do"
  , "    receive do"
  , "      x -> x"
  , "    end"
  , "  end"
  , ""
  , "  def spawn_idris(f) do"
  , "    spawn(fn () -> f.(:idris_nothing) end)"
  , "  end"
  , ""
  -- , "  def send_any(pid, x) do"
  -- , "    send(pid, x)"
  -- , "  end"
  , "end"
  ]

-- Let's not mangle /that/ much. Especially function parameters
-- like e0 and e1 are nicer when readable.
cgName :: Name -> Expr
cgName (MN i n) | all (\x -> isAlpha x || x == '_') (T.unpack n)
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
defLambda [] body = body
defLambda (a:args) body =
      text "fn " <> text "(" <+> a <+> text ") ->"
  -- $+$ indent (text "IO.puts \"in: anonymous\"")
  $+$ indent (defLambda args body)
  $+$ text "end"

defFunction :: Doc -> [Doc] -> Doc -> Doc
defFunction name args body =
     text "def " <> name <> text "(" <+> commaSeperated args <+> text ") do"
  -- $+$ indent (text "IO.puts \"in:" <+> name <> text "\"")
  $+$ indent body
  $+$ text "end"

cgCon :: Name -> [Doc] -> Doc
-- Unit
cgCon (UN "MkUnit") [] = text "{}"
-- Idris booleans as Elixir booleans
cgCon (NS (UN "True") ["Bool", "Prelude"]) [] = text "true"
cgCon (NS (UN "False") ["Bool", "Prelude"]) [] = text "false"
-- Idris pairs as Elixir tuples
cgCon (NS (UN "MkPair") ["Builtins"]) [x, y] = text "{" <+> x <+> text "," <+> y <+> text "}"
-- Idris listy-things as Elixir lists
cgCon (NS (UN "Nil") _) [] = text "[]"
cgCon (NS (UN "::") _) [x,y] = text "[" <+> x <+> text "|" <+> y <+> text "]"
-- No argument constructor
cgCon name [] = constructorName name
-- General constructor
cgCon name args =
  -- text "#" <+> text (showName name) $+$
  text "{" <> commaSeperated (constructorName name : args) <> text "}"

showName :: Name -> String
showName n = case n of
  UN t -> "UN (" ++ T.unpack t ++ ")"
  NS n' ts -> "NS (" ++ showName n' ++ ") (" ++ show (T.unpack <$> ts) ++ ")"
  MN i t -> "MN (" ++ show i ++ ") (" ++ T.unpack t ++ ")"
  SN sn -> "SN (" ++ show sn ++ ")"
  SymRef i -> "SymRef (" ++ show i ++ ")"

usedArgumentList :: [Name] -> LExp -> [Doc]
usedArgumentList arguments body =
  let used = usedArgs body `S.intersection` S.fromList arguments
  in  [ (if u then empty else text "_") <> cgName a | a <- arguments, let u = S.member a used ]

elixirDef :: (Name, LDecl) -> State CGState Doc
elixirDef (name, decl) = do
  resetVarCounter
  case decl of
    con@LConstructor{} -> pure $
          text "#" <+> text (showName name)
      $+$ multiLineComment (show con)
      $+$ text ""
    LFun _ _ arguments body -> do
      let argNames = usedArgumentList arguments body
      (stmts, retV) <- cgBody body
      pure $
            text ""
        $+$ multiLineComment (show decl)
        $+$ text ""
        $+$ text "#" <+> text (show name)
        $+$ text "#" <+> text (showName name)
        $+$ defFunction
              (cgName name)
              argNames
              (stmts $+$ retV)

usedArgs :: LExp -> S.Set Name
usedArgs e = case e of
  LV (Glob n) -> S.singleton n
  LApp _ f xs -> usedArgs f <> foldMap usedArgs xs
  LLazyApp f xs -> foldMap usedArgs xs
  LForce e -> usedArgs e
  LLet n x y -> usedArgs x <> usedArgs y
  LProj e _ -> usedArgs e
  LCon _ _ _ xs -> foldMap usedArgs xs
  LCase _ e as -> usedArgs e <> foldMap frAlt as
  LConst _ -> S.empty
  LForeign _ _ xs -> foldMap usedArgs (snd <$> xs)
  LOp primFn xs -> foldMap usedArgs xs
  LNothing -> S.empty
  LError e -> S.empty
  where
    frAlt (LConCase _ _ _ e) = usedArgs e
    frAlt (LConstCase _ e) = usedArgs e
    frAlt (LDefaultCase e) = usedArgs e

cgAssign :: Doc -> Expr -> Stmts
cgAssign v e =
      v <+> text "="
  $+$ indent e

separatedWith :: Doc -> [Doc] -> Doc
separatedWith sep xs = foldr (<>) (text "") (intercalate [sep] (pure <$> xs))

commaSeperated :: [Doc] -> Doc
commaSeperated = separatedWith (text ", ")

defFunApp :: Doc -> [Doc] -> Doc
defFunApp f xs = f <> text "(" <+> commaSeperated xs <+> text ")"

fnApp :: Doc -> [Doc] -> Doc
fnApp f []     = f <> text ".()"
fnApp f [x]    = f <> text ".(" <+> x <+> text ")"
fnApp f (x:xs) = fnApp (fnApp f [x]) xs

cgBody :: LExp -> State CGState (Stmts, Expr)
cgBody body = case body of
  LV v@(Glob f) -> do
    ds_ <- getDefState f
    case ds_ of
      Nothing -> pure (empty, cgVar v)
      Just ds -> pure (empty, cgVar v <> text "()")
  LV v -> pure (empty, cgVar v)
  LCase _ e@(LOp _ [_, _]) [LConstCase (I 0) whenFalse, LDefaultCase whenTrue] -> do
    ifElseV <- fresh
    (scrutStmts, scrut) <- cgBody e
    (ffStmts, ff) <- cgBody whenFalse
    (ttStmts, tt) <- cgBody whenTrue
    let b =     text "if (" <+> scrut <+> text ") do"
            $+$ indent (ttStmts $+$ tt)
            $+$ text "else"
            $+$ indent (ffStmts $+$ ff)
            $+$ text "end"
    pure (scrutStmts $+$ cgAssign (cgVar ifElseV) b, cgVar ifElseV)
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
  -- -- special receive function
  -- LApp _ (LV (Glob (NS (UN "unsafeReceive") ["Main"]))) [_,_] -> do
  --   r <- fresh
  --   x <- fresh
  --   let e =
  --             text "receive do"
  --         $+$ indent (cgVar x <+> text "->" <+> [cgVar x])
  --         $+$ text "end"
  --   pure (stmts $+$ cgAssign (cgVar r) e, cgVar r)
  LApp _ (LV (Glob f)) args -> do
    xs <- traverse prepArg args
    let stmts = vcat (fst <$> xs)
    let argEs = snd <$> xs
    let numArgs = length args
    ds_ <- getDefState f
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
  c@(LCon _ _ n es) -> do
    xs <- traverse cgBody es
    let ss = (vcat $ fst <$> xs) $+$ (multiLineComment (show c ++ "\n" ++ show (length es)))
    pure (ss, cgCon n (snd <$> xs))
  LConst c -> pure (empty, cgConst c)
  LForeign _ (FStr fn) args -> do
    as <- traverse cgBody (snd <$> args)
    pure (empty, defFunApp (text fn) (snd <$> as))
  LOp prim args -> do
    as <- traverse cgBody args
    pure (vcat (fst <$> as), cgOp prim (snd <$> as))
  LNothing -> pure (empty, text ":idris_nothing")
  LError s -> pure (empty, text ("\"ERROR: " ++ s ++ "\""))
  _ -> pure (empty, text "UNIM SOMETHING ELSE")

-- | Arguments which are references to global functions need to be made into
-- lambdas.
prepArg :: LExp -> State CGState (Stmts, Expr)
prepArg (LV (Glob f)) = do
  ds_ <- getDefState f
  case ds_ of
    Just ds -> do
      xs <- sequence $ replicate (fullArity ds) fresh
      let xs' = cgVar <$> xs
      funV <- fresh
      let fun = defLambda xs' (defFunApp (cgName f) xs')
      pure ( cgAssign (cgVar funV) fun, cgVar funV )
    Nothing -> cgBody (LV (Glob f))
prepArg x = cgBody x

cgAlt :: LAlt -> State CGState Expr
cgAlt (LConCase _ n ns e) = do
  let args = usedArgumentList ns e
  (ss, b) <- cgBody e
  pure $     --text "#" <+> text (show alt) $+$
             cgCon n args <> text " ->"
         $+$ indent (ss $+$ b)
cgAlt (LConstCase con e) = do
  let c = cgConst con
  (ss, b) <- cgBody e
  pure $
             --    text "#" <+> text (showConst con) $+$
             c <+> text "->"
         $+$ indent (ss $+$ b)
cgAlt (LDefaultCase e) = do
  (ss, b) <- cgBody e
  pure $
        text "_ ->"
    $+$ indent (ss $+$ b)

-- showConst :: Const -> String
-- showConst c@(I _)  = "I - " ++ show c
-- showConst c@(BI _) = "BI - " ++ show c
-- showConst c        = show c

cgOp :: PrimFn -> [Doc] -> Doc
cgOp pf es =
    case (es, pf) of
      (as, LPlus _)      -> bi as "+"
      (as, LMinus _)     -> bi as "-"
      (as, LTimes _)     -> bi as "*"
      (as, LStrConcat)   -> bi as "<>"
      ([x], LStrHead) -> text "String.first(" <> x <> text ")"
      (as, LStrEq)       -> bi as "=="
      (as, LEq _)        -> bi as "=="
      ([e], LExternal _) -> e -- TODO: Not sure what this is
      ([_,s], LWriteStr) -> text "IO.puts(" <+> s <+> text ")"
      ([i], LIntStr _) -> text "to_string(" <+> i <+> text ")"
      ([i], LTrunc ITBig ITNative) -> i -- TODO ?
      ([i], LSExt ITNative ITBig) -> i -- TODO ?
      (as, LSLt _) -> bi as "<"
      (as, LSGt _) -> bi as ">"
      ([], op) -> text "raise(\"UNIM PRIM OP NOT IMPLEMENTED: " <> text (show op) <> text "\")"
      (xs, op) ->
           text "raise(\"UNIM PRIM OP NOT IMPLEMENTED: "
        <> text (show op)
        <> text "\" <> "
        <> listInspect xs
        <> text " )"
  where
    bi [x,y] sym = x <+> text sym <+> y
    bi _ _       = text "ERROR UNIM"

    inspect x = text "Kernel.inspect(" <> x <> text ")"
    listInspect xs = separatedWith (text " <> ") (inspect <$> xs)

cgConst :: Const -> Doc
cgConst c = text $ case c of
  I i   -> show i
  BI i  -> show i
  Fl d  -> show d
  Ch ch -> show ch
  Str s -> show s
  _     -> "raise(\"!UNIM! constant: " ++ show c ++ "\""

elixirChar dot x = case x of
      '.' -> dot
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
      '+' -> "_plus_"
      '#' -> "_hash_"
      c | isAlpha c || isDigit c -> [c]
        | otherwise              -> "_" ++ show (fromEnum x) ++ "_"

elixirName :: Name -> String
elixirName n = "i_" ++ concatMap (elixirChar "_d_") (show n)

constructorName :: Name -> Doc
constructorName (NS (UN un) _) | isLegalAtom (T.unpack un) = text (':' : T.unpack un)
  where
    isLegalAtom (c:cs) =
         all isAlphaNum cs
      && isAlpha c
    isLegalAtom _ = False
constructorName (NS (UN un) _) = text ":\"" <> text (concatMap (elixirChar ".") (T.unpack un)) <> text "\""
constructorName n = text (concatMap (elixirChar ".") (show n))
