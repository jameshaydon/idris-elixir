public export
data Hello : Type where
  FooFoo : Int -> String -> Hello
  FooBar : Int -> Hello -> Hello

funfun : Hello -> Hello
funfun (FooFoo x y) = FooFoo (x + x) y
funfun (FooBar x y) = FooBar (x + x) (funfun y)

export
fifi : String -> String -> Hello
fifi "x" = FooFoo 3
fifi x = FooFoo 4

flamflam : Int -> Int -> Int
flamflam x y = 2 * x + y

kiki : Int -> Int
kiki n = sum (map (flamflam 2) [1..n])

show : Hello -> String
show (FooFoo x y) = "FOOFOO: " ++ show x ++ " - " ++ y
show (FooBar x y) = "FOOBAR: " ++ show x ++ " - " ++ show y

main : JS_IO ()
main = do
  putStrLn' $ show $ funfun (FooBar 2 (FooFoo 3 "yoyoyo"))
  putStrLn' (show (kiki 5))
  putStrLn' (show (fifi "y" "yolo"))
