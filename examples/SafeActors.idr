module SafeActors

import ElixirFFI

%default total
%access public export

data PID a = MkPID Ptr

Show (PID a) where
  show _ = "<pid>"

data Beh : Type -> Type -> Type where
  Self : Beh a (PID a)
  Recv : Beh a a
  Send : (pid : PID m) -> (x : m) -> Beh a ()
  Spawn : Beh b () -> Beh a (PID b)
  Pure : b -> Beh a b
  Bind : Beh a b1 -> (b1 -> Beh a b2) -> Beh a b2
  LiftIO : EIO b -> Beh a b

runBeh : Beh a b -> EIO b
runBeh Self = do
    ptr <- selfPtr
    pure (MkPID ptr)
runBeh Recv = unsafeReceive
runBeh (Send (MkPID ptr) x) = unsafeSend ptr x
runBeh (Spawn x) = do
    ptr <- unsafeSpawn (runBeh x)
    pure (MkPID ptr)
runBeh (Pure x) = pure x
runBeh (Bind x f) = do
    y <-  runBeh x
    runBeh (f y)
runBeh (LiftIO io) = io

self : Beh a (PID a)
self = Self

recv : Beh a a
recv = Recv

send : (pid : PID m) -> (x : m) -> Beh a ()
send pid x = Send pid x

spawn : Beh b () -> Beh a (PID b)
spawn = Spawn

liftIO : EIO b -> Beh a b
liftIO = LiftIO

pure : b -> Beh a b
pure x = Pure x

(>>=) : Beh a b1 -> (b1 -> Beh a b2) -> Beh a b2
(>>=) mx f = Bind mx f

Functor (Beh a) where
  map f mx = do
    x <- mx
    pure (f x)

Applicative (Beh a) where
  pure = Pure
  af <*> ax = do
    f <- af
    x <- ax
    pure (f x)

Monad (Beh a) where
  mx >>= f = do
    x <- mx
    f x
