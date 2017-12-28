module Main

-- FFI

||| Supported Elixir foreign types.
data ElxTypes : Type -> Type where

  -- Primitive types
  ElxInt_io     : ElxTypes Int
  ElxNat_io     : ElxTypes Nat
  ElxInteger_io : ElxTypes Integer
  ElxDouble_io  : ElxTypes Double
  ElxBool_io    : ElxTypes Bool
  ElxChar_io    : ElxTypes Char
  ElxString_io  : ElxTypes String

  -- Other types
  ElxUnit_io  : ElxTypes ()
  ElxPair_io  : ElxTypes a -> ElxTypes b -> ElxTypes (a, b)
  ElxList_io  : ElxTypes a -> ElxTypes (List a)
  ElxFun_io   : ElxTypes a -> ElxTypes b -> ElxTypes (a -> b)
  ElxMaybe_io : ElxTypes a -> ElxTypes (Maybe a)

  ||| Elixir pointers, opaque to Idris.
  ElxPtr_io : ElxTypes Ptr

FFI_Elx : FFI
FFI_Elx = MkFFI ElxTypes String String

||| Elxthon IO. Read "pie-oh".
EIO : Type -> Type
EIO = IO' FFI_Elx

%inline
elxcall : (fname : String) -> (ty : Type) ->
          {auto fty : FTy FFI_Elx [] ty} -> ty
elxcall fname ty = foreign FFI_Elx fname ty

spawnPtr : Ptr -> EIO Ptr
spawnPtr p = elxcall "IdrisRts.spawn_idris" (Ptr -> EIO Ptr) p

spawn : (() -> EIO ()) -> EIO Ptr
spawn f = spawnPtr (believe_me f)

receivePtr : EIO Ptr
receivePtr = elxcall "IdrisRts.receive_any" (EIO Ptr)

unsafeReceive : EIO a
unsafeReceive = do
  --putStrLn' "Doing an unsafe receive."
  p <- receivePtr
  pure (believe_me p)

sendPtr : Ptr -> Ptr -> EIO ()
sendPtr p m = elxcall "send" (Ptr -> Ptr -> EIO ()) p m

unsafeSend : Ptr -> a -> EIO ()
unsafeSend p m = do
  --putStrLn' "doing an unsafe send."
  sendPtr p (believe_me m)

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

echo : () -> EIO ()
echo _ = do
  x <- unsafeReceive
  putStrLn' x
  echo ()

main : EIO ()
main = do
  pid <- spawn echo
  unsafeSend pid "hello"
  unsafeSend pid "world"
  putStrLn' $ "Should be 55: " ++ show (fifi [1..10])
  putStrLn' $ "Should be 21: " ++ show (sumTips (exampleTree))
  putStrLn' $ "Should be " ++ show [1..6] ++ ": " ++ show (tips (exampleTree))
  putStrLn' $ "Should be 20: " ++ show (length (pythag 50))
