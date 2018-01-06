module Main

import ElixirFFI
import SafeActors

data Tree a = Leaf a | Node (Tree a) (Tree a)

sumTree : Tree Int -> Int
sumTree (Leaf x) = x
sumTree (Node l r) = sumTree l + sumTree r

ssinit : () -> InitRet Int String
ssinit _ = Ok 0

hc : Req Int Int -> HandleCallRet Int Int String
hc (MkReq msg state) = Reply state (state + msg)

main : EIO ()
main = do
  (_, pid) <- gengenserver ssinit hc
  putStrLn' "spawned"
  putStrLn' (show (sumTree (Node (Leaf 9) (Leaf 4))))
  x <- gengencall pid (believe_me 2)
  putStrLn' $ "yoyo"
