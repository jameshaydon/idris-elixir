module Main

import ElixirFFI
import SafeActors

data ShowVal : Type where
  MkShowVal : {a : Type} -> (Show a) => a -> ShowVal

printer : Beh (PID (), ShowVal) ()
printer = do
  (pid, MkShowVal x) <- recv
  liftIO (putStrLn' ("Hello this is you printing service, here is you printout: " ++ show x))
  send pid ()
  printer

coord : Beh () ()
coord = do
  me <- self
  pr <- spawn printer
  send pr (me, MkShowVal 12)
  () <- recv
  send pr (me, MkShowVal [1,2,3])
  () <- recv
  liftIO (putStrLn' "Done!")

RespInt : Type
RespInt = (a ** (PID a, Int -> a))

keepInt : Int -> Beh (RespInt, Int) ()
keepInt state = do
  ((_ ** (pid, injInt)), i) <- recv
  let newState = state + i
  send pid (injInt newState)
  keepInt newState

sendKeepInt : PID (RespInt, Int) -> PID a -> (Int -> a) -> Int -> Beh a ()
sendKeepInt ki pid f i = send ki ((_ ** (pid, f)), i)

data Foo = A Int | B (List String)
data Bar = C Int | D String

foo : PID () -> PID (RespInt, Int) -> Beh Foo ()
foo coord ki = do
  me <- self
  sendKeepInt ki me A 1
  A resp <- recv | _ => liftIO (putStrLn' "foo got back something else.")
  liftIO (putStrLn' ("foo got back: " ++ show resp))
  send coord ()

bar : PID () -> PID (RespInt, Int) -> Beh Bar ()
bar coord ki = do
  me <- self
  sendKeepInt ki me C 2
  C resp <- recv | _ => liftIO (putStrLn' "bar got back something else.")
  liftIO (putStrLn' ("bar got back: " ++ show resp))
  send coord ()

coordKeepInt : Beh () ()
coordKeepInt = do
  me <- self
  ki <- spawn (keepInt 0)
  foo_ <- spawn (foo me ki)
  bar_ <- spawn (bar me ki)
  () <- recv
  () <- recv
  liftIO (putStrLn' "Done!")

main : EIO ()
main = runBeh coordKeepInt
