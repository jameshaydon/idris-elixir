module Main

pythag : Int -> List (Int, Int, Int)
pythag max = [(x, y, z) | z <- [1..max], y <- [1..z], x <- [1..y],
                          x * x + y * y == z * z]

fifi : List Int -> Int
fifi [] = 0
fifi (x::xs) = x + fifi xs

main : IO ()
main = do
  putStrLn $ show $ fifi [1..10]
  print (pythag 50)

