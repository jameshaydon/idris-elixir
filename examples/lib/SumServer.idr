module Main

import ElixirFFI
import SafeActors

ssinit : () -> InitRet Int String
ssinit _ = Ok 0

hc : Req Int Int -> HandleCallRet Int Int String
hc (MkReq msg state) = Reply state (state + msg)

main : EIO ()
main = do
  (_, pid) <- gengenserver ssinit hc
  putStrLn' "spawned"
  x <- gengencall pid (believe_me 2)
  putStrLn' $ "yoyo"
