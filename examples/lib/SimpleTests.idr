module Main

import ElixirFFI

pythag : Int -> List (Int, Int, Int)
pythag max =
  [ (x, y, z)
  | z <- [1..max]
  , y <- [1..z]
  , x <- [1..y]
  , x * x + y * y == z * z
  ]

fifi : List Int -> Int
fifi [] = 0
fifi (x::xs) = x + fifi xs

data Tree a = Tip a | Node (Tree a) (Tree a)

foldTree : (a -> b) -> (b -> b -> b) -> Tree a -> b
foldTree tip node (Tip x) = tip x
foldTree tip node (Node x y) = node (foldTree tip node x) (foldTree tip node y)

exampleTree : Tree Int
exampleTree =
  Node (Node (Node (Tip 1) (Tip 2)) (Tip 3))
       (Node (Tip 4) (Node (Tip 5) (Tip 6)))

tips : Tree a -> List a
tips = foldTree pure (++)

sumTips : Num a => Tree a -> a
sumTips = foldTree id (+)

main : EIO ()
main = do
  putStrLn' $ "Should be 55: " ++ show (fifi [1..10])
  putStrLn' $ "Should be 21: " ++ show (sumTips (exampleTree))
  putStrLn' $ "Should be " ++ show [1..6] ++ ": " ++ show (tips (exampleTree))
  putStrLn' $ "Should be 20: " ++ show (length (pythag 50))
