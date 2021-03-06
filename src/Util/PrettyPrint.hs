{-# LANGUAGE TupleSections #-}

module Util.PrettyPrint
    ( Doc
    , int, text
    , comma, colon
    , lparen, rparen, lbracket, rbracket, lbrace, rbrace
    , (<+>), ($+$), ($$)
    , (<?>)
    , nest
    , parens, brackets
    , empty
    , render
    , vcat, hsep
    , punctuate
    , size, width
    , multiLineComment
    , removeEmptyLineWS
    )
    where

import Data.Monoid

type Line = (String, String)  -- text, comment
newtype Doc = Doc [Line]

instance Show Doc where
    show = render "--"

instance Monoid Doc where
  mempty = Doc []
  mappend (Doc xs) (Doc ys) = Doc $ meld "" xs ys

infixr 6 <+>
infixr 5 $$, $+$
infixl 1 <?>

int :: Int -> Doc
int i = text $ show i

text :: String -> Doc
text s = Doc [(s, "")]

comma, colon :: Doc
comma    = text ","
colon    = text ":"

lparen, rparen, lbracket, rbracket, lbrace, rbrace :: Doc
lparen   = text "("
rparen   = text ")"
lbracket = text "["
rbracket = text "]"
lbrace   = text "{"
rbrace   = text "}"

(<+>) :: Doc -> Doc -> Doc
Doc xs <+> Doc ys = Doc $ meld " " xs ys

($+$) :: Doc -> Doc -> Doc
Doc xs $+$ Doc ys = Doc $ xs ++ ys

($$) :: Doc -> Doc -> Doc
($$) = ($+$)

-- | Add a comment to the first line of the Doc.
(<?>) :: Doc -> String -> Doc
Doc [] <?> comment = Doc [("", comment)]
Doc ((t,c) : lines) <?> comment = Doc $ (t, merge comment c) : lines
  where
    merge "" y  = y
    merge x  "" = x
    merge x  y  = x ++ " (" ++ y ++ ")"

meld :: String -> [Line] -> [Line] -> [Line]
meld sep [] ys = ys
meld sep xs [] = xs
meld sep [(x,xc)] ((y,yc) : ys) = (x ++ sep ++ y, merge xc yc) : ys
  where
    merge "" y  = y
    merge x  "" = x
    merge x  y  = x ++ ", " ++ y
meld sep (x : xs) ys = x : meld sep xs ys

nest :: Int -> Doc -> Doc
nest n (Doc xs) = Doc [(replicate n ' ' ++ t, c) | (t, c) <- xs]

parens :: Doc -> Doc
parens d = lparen <> d <> rparen

brackets :: Doc -> Doc
brackets d = lbracket <> d <> rbracket

render :: String -> Doc -> String
render cmtStr (Doc xs) = unlines $ map (renderLine cmtStr) xs

multiLineComment :: String -> Doc
multiLineComment s = Doc $ ("",) <$> lines s

renderLine :: String -> (String, String) -> String
renderLine _ ("", "") = ""
renderLine cmtStr ("", comment) = cmtStr ++ " " ++ comment
renderLine _ (content, "") = content
renderLine cmtStr (content, comment) = content ++ "  " ++ cmtStr ++ " " ++ comment

empty :: Doc
empty = Doc []

vcat :: [Doc] -> Doc
vcat = foldr ($+$) empty

hsep :: [Doc] -> Doc
hsep = foldr (<+>) empty

punctuate :: Doc -> [Doc] -> [Doc]
punctuate _ []         = []
punctuate _ [x]        = [x]
punctuate sep (x : xs) = (x <> sep) : punctuate sep xs

size :: Doc -> Int
size (Doc xs) = sum [length t | (t, c) <- xs]

width :: Doc -> Int
width (Doc xs) = maximum [length t | (t, c) <- xs]

removeEmptyLineWS :: Doc -> Doc
removeEmptyLineWS (Doc ls) = Doc (f <$> ls)
  where f (x,y) | isJustWS x && isJustWS y = ("","")
        f z     = z
        isJustWS = all (\x -> x `elem` " \t")
