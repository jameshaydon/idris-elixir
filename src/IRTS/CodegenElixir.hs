{-# LANGUAGE PatternGuards #-}
module IRTS.CodegenElixir(codegenElixir) where

import Data.List
import IRTS.CodegenCommon
import IRTS.Lang hiding (lift)
import IRTS.Simplified
import Idris.Core.TT

import Data.Maybe
import Data.Char

import qualified Data.Map as M
import qualified Data.Text as T
import Util.PrettyPrint

import Control.Applicative hiding (empty, Const)
import Control.Monad
import Control.Monad.Trans.State.Lazy
import Control.Monad.Trans.Reader
import Control.Monad.Trans.Class

import Debug.Trace

-- Codegen state within one Decl
data CGState = CGState
    { varCounter :: Int          -- for fresh variables
    }
    deriving (Show)

-- Make the distinction for the humans reading the code
type Stmts = Doc  -- statements
type Expr  = Doc  -- expressions

fresh :: State CGState LVar
fresh = do
  CGState vc <- get
  put $ CGState (vc + 1)
  pure (Loc (-vc))

indent :: Doc -> Doc
indent = nest 2

codegenElixir :: CodeGenerator
codegenElixir ci = do
  let defs = liftDecls ci
  let elixirDefs = trace (show defs) $ vcat $ elixirDef <$> defs
  let f =     topComment
          $+$ helperModule
          $+$ text ""
          $+$ text "defmodule IdrisElixir do"
          $+$ indent elixirDefs
          $+$ text "end"
          $+$ text ""
          $+$ start
  writeFile (outputFile ci) (render "#" f)
  where
    topComment = text $ "# This file was compiled by idris-elixir."
    start = text $ "IdrisElixir." ++ elixirName (sMN 0 "runMain") ++ "();"

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
  , "    end"
  , "  end"
  , "end"
  ]

elixirName :: Name -> String
elixirName n = "idris_" ++ concatMap elixirChar (show n)
  where
    elixirChar x = case x of
      '.' -> "_d_"
      '_' -> "___"
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
      x | isAlpha x || isDigit x -> [x]
        | otherwise              -> "_" ++ show (fromEnum x) ++ "_"


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

elixirLambda :: Doc -> Doc -> Doc
elixirLambda arg body =
      text "fn" <+> arg <+> text "->"
  $+$ indent body
  $+$ text "end"

thunk :: Doc -> Doc
thunk body =
  text "fn ->"
  $+$ indent body
  $+$ text "end"

nestedLambdas :: [Doc] -> Doc -> Doc
nestedLambdas [] body = thunk body
nestedLambdas [a] body = elixirLambda a body
nestedLambdas (a:as) body = elixirLambda a (nestedLambdas as body)

elixirFunction :: Name -> [Doc] -> Doc -> Doc
elixirFunction name args body =
      text ("# " ++ show name)
  $+$ cgAssign (cgName name) (nestedLambdas args body)

cgCon :: Doc -> [Doc] -> Doc
cgCon name args =
  text "{" <> commaSeperated ((text ":" <> name) : args) <> text "}"

elixirDef :: (Name, LDecl) -> Doc
elixirDef (name, decl) = case decl of
  LConstructor _ _ arity ->
    elixirFunction
      name
      (args arity)
      (cgCon (cgName name) (args arity))
  LFun options _ arguments body ->
    let fnName = elixirName name
        argNames = cgName <$> arguments
        (stmts, retV) = evalState (cgBody body) initState
    in elixirFunction
         name
         argNames
         (stmts $+$ retV)
  where
    args arity = [text ("arg_" ++ show i) | i <- [0..(arity - 1)]]
    initState = CGState 1

cgAssign :: Doc -> Expr -> Stmts
cgAssign v e = v <+> text "=" <+> e

commaSeperated :: [Doc] -> Doc
commaSeperated xs = foldr (<>) (text "") (intercalate [text ", "] (pure <$> xs))

fnApp :: Doc -> [Doc] -> Doc
fnApp f [] = f -- <> text ".()"
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
  LApp tailcall e args -> do
    (ss, f) <- cgBody e
    xs <- traverse cgBody args
    pure (ss $+$ vcat (fst <$> xs), fnApp f (snd <$> xs))
  LLazyApp n args -> do
      (ss, b) <- cgBody (LApp False (LV (Glob n)) args)
      pure (empty, text "{:idris_lazy, " <> thunk (ss $+$ b) <> text "}")
    where
      thunk body =
            text "fn() ->"
        $+$ indent body
        $+$ text "end"
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
  LProj e i -> pure (empty, text "UNIM PROJ")
  LCon _ _ n es -> do
    xs <- traverse cgBody es
    let ss = vcat $ fst <$> xs
    pure (ss, cgCon (cgName n) (snd <$> xs))
  LConst c -> pure (empty, cgConst c)
  LForeign _ _ _ -> pure (empty, text "UNIM FOREIGN")
  LOp prim args -> do
    as <- traverse cgBody args
    pure (vcat (fst <$> as), cgOp prim (snd <$> as))
  LNothing -> pure (empty, text ":idris_nothing")
  LError s -> pure (empty, text ":unim-error")
  x -> pure (empty, text "UNIM SOMETHING ELSE")

cgAlt :: LAlt -> State CGState Expr
cgAlt alt@(LConCase _ n ns e) = do
  (ss, b) <- cgBody e
  pure $     cgCon (cgName n) (cgName <$> ns) <> text " ->"
         $+$ indent (ss $+$ b)
cgAlt (LConstCase const e) = do
  let c = cgConst const
  (ss, b) <- cgBody e
  pure $     c <+> text "->"
         $+$ indent (ss $+$ b)
cgAlt (LDefaultCase e) = do
  (ss, b) <- cgBody e
  pure $
        text "_ ->"
    $+$ indent (ss $+$ b)

cgOp :: PrimFn -> [Doc] -> Doc
cgOp pf es =
    case (es, pf) of
      (as, LPlus _) -> bin as "+"
      (as, LStrConcat) -> bin as "<>"
      (as, LStrEq) -> bin as "=="
      (as, LEq _) -> bin as "=="
      ([e], LExternal n) -> e -- TODO: Not sure what this is
      (as, op) -> text ":idris_error" --"UNIM PRIM OP NOT IMPLEMENTED: " ++ show op
  where
    bin [x,y] sym = x <+> text sym <+> y

cgConst :: Const -> Doc
cgConst c = text $ case c of
  I i -> show i
  BI i -> show i
  Fl d -> show d
  Ch c -> show c
  Str s -> show s
  _ -> "!UNIM! constant: " ++ show c
