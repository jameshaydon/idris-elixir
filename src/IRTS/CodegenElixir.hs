{-# LANGUAGE OverloadedStrings #-}
module IRTS.CodegenElixir(codegenElixir) where

import Data.List
import IRTS.CodegenCommon
import IRTS.Lang
import IRTS.Simplified
import Idris.Core.TT

import Data.Maybe
import Data.Char

infixr 5 +++
(+++) :: String -> String -> String
(+++) x y = x ++ "\n\n" ++ y

topComment = "# This file was compiled by idris-elixir."

codegenElixir :: CodeGenerator
codegenElixir ci = do
  let defs = liftDecls ci
  let elixirDefs = concatMap elixirDef defs
  let f =     topComment
          +++ helperModule
          +++ elixirDefs
          +++ start
  writeFile (outputFile ci) f

start :: String
start = "IdrisElixir." ++ elixirName (sMN 0 "runMain") ++ "();"

helperModule = unlines
  [ "defmodule IdrisHelper do"
  , "  def error(s) do"
  , "    IO.puts (\"there was an error: \" <> s)"
  , "  end"
  , "end"
  , ""
  , "defmodule IdrisRts do"
  , "  def force(x) do"
  , "    case x do"
  , "      {:idris-lazy, thunk, val} -> val"
  , "      {:idris-lazy, thunk} -> thunk.()"
  , "      _ -> x"
  , "    end"
  , "  end"
  , "end"
  ]

-- smallName :: Name -> String
-- smallName n = _

elixirName :: Name -> String
elixirName n = "idris_" ++ concatMap elixirchar (show n)
  where
    elixirchar x | isAlpha x || isDigit x = [x]
    elixirchar '.' = "_dot_"
    elixirchar '_' = "_"
    elixirchar '{' = "_lc_"
    elixirchar '}' = "_rc_"
    elixirchar x = "_" ++ show (fromEnum x) ++ "_"

elixirFunction name args body =
  "# " ++ show name ++ "\n" ++
  "def "
  ++ elixirName name
  ++ "(" ++ intercalate ", " args
  ++ ") do\n"
  ++ indent body
  ++ "end\n\n"

cgCon :: Name -> [String] -> String
cgCon name args = "{" ++ intercalate ", " ((":" ++ elixirName name) : args) ++ "}"

elixirDef :: (Name,LDecl) -> String
elixirDef (name, decl) = case decl of
  LConstructor _ _ arity ->
    elixirFunction
      name
      (args arity)
      (cgCon name (args arity))
  LFun options _ arguments body ->
    let fnName = elixirName name
        argNames = elixirName <$> arguments
        elixirBody = cgBody body
    in elixirFunction
         name
         argNames
         elixirBody
  where
    args arity = ["arg_" ++ show i | i <- [0..(arity - 1)]]

cgBody :: LExp -> String
cgBody body = case body of
  LV v -> case v of
    Loc i -> "LOC" ++ show i
    Glob n -> elixirName n
  LCase _ e alts ->
    let e' = cgBody e
    in "case (" ++ e' ++ ") do\n"
       ++ indent (unlines (cgAlt <$> alts))
       ++ "end\n"
  LApp tailcall e args ->
    let e' = cgBody e
    in e' ++ "(" ++ intercalate ", " (cgBody <$> args) ++ ")"
  LLazyApp n args -> "{:idris-lazy, " ++ thunk ++ "}"
    where thunk = "fn() ->\n" ++ indent body ++ "end"
          body = cgBody (LApp False (LV (Glob n)) args)
  LForce e -> "IdrisRts.force(" ++ cgBody e ++ ")"
  LLet n x e ->
    elixirName n ++ " = " ++ cgBody x ++ "\n"
    ++ cgBody e
  LProj e i -> "UNIM PROJ"
  LCon _ _ n es ->
    let es' = cgBody <$> es
    in cgCon n es'
  LConst c -> cgConst c
  LForeign _ _ _ -> "UNIM FOREIGN"
  LOp prim args -> cgOp prim args
  LNothing -> ":idris_nothing"
  LError s -> "UNIM ERROR"
  x -> "UNIM SOMETHING ELSE"

cgAlt :: LAlt -> String
cgAlt alt@(LConCase _ n ns e) =
  "{" ++ intercalate ", " ((":" ++ elixirName n) : (elixirName <$> ns)) ++ "} ->\n"
  ++ indent (cgBody e)
cgAlt (LConstCase const e) = "_ ->\n  \"THIS IS NOT IMPLEMENTED!\""
cgAlt (LDefaultCase e) = "_ ->\n"
  ++ indent (cgBody e)

cgOp :: PrimFn -> [LExp] -> String
cgOp pf es =
  let es' = cgBody <$> es
  in case (es', pf) of
    (as, LPlus _) -> bin as "+"
    (as, LStrConcat) -> bin as "<>"
    (as, LStrEq) -> bin as "=="
    (as, LEq _) -> bin as "=="
    ([e], LExternal n) -> e -- TODO: Not sure what this is
    (as, op) -> ":idris-error" --"UNIM PRIM OP NOT IMPLEMENTED: " ++ show op
  where
    bin [x,y] sym = x ++ " " ++ sym ++ " " ++ y

cgConst :: Const -> String
cgConst c = case c of
  I i -> show i
  BI i -> show i
  Fl d -> show d
  Ch c -> show c
  Str s -> show s
  _ -> "!UNIM! constant: " ++ show c

indent :: String -> String
indent = unlines . fmap ("  " ++) . lines
