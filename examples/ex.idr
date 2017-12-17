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

show : Hello -> String
show (FooFoo x y) = "FOOFOO: " ++ show x ++ " - " ++ y
show (FooBar x y) = "FOOBAR: " ++ show x ++ " - " ++ show y

main : JS_IO ()
main = do
  putStrLn' $ show $ funfun (FooBar 2 (FooFoo 3 "yoyoyo"))
  putStrLn' (show (fifi "y" "yolo"))
