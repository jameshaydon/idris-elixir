module Main where

import           Idris.AbsSyntax
import           Idris.ElabDecls
import           Idris.Main
import           Idris.Options
import           IRTS.CodegenElixir
import           IRTS.Compiler
import           System.Environment
import           System.Exit

data Opts = Opts { inputs :: [FilePath],
                   output :: FilePath }

showUsage :: IO b
showUsage = do putStrLn "Usage: idris-elixir <ibc-files> [-o <output-file>]"
               exitWith ExitSuccess

getOpts :: IO Opts
getOpts = do xs <- getArgs
             return $ process (Opts [] "a.php") xs
  where
    process opts ("-o":o:xs) = process (opts { output = o }) xs
    process opts ("--yes-really":xs) = process opts xs -- GRRR
    process opts (x:xs) = process (opts { inputs = x:inputs opts }) xs
    process opts [] = opts

c_main :: Opts -> Idris ()
c_main opts = do elabPrims
                 _ <- loadInputs (inputs opts) Nothing
                 mainProg <- elabMain
                 ir <- compile (Via IBCFormat "elixir") (output opts) (Just mainProg)
                 runIO $ codegenElixir ir

main :: IO ()
main = do opts <- getOpts
          if null (inputs opts)
             then showUsage
             else runMain (c_main opts)


