module Main

import ElixirFFI
import SafeActors

State : Type
State = List Int

mutual
  data Req = GetFreq (PID Resp) | RetFreq Int
  data Resp = NoneFree | Freq Int

Show Req where
  show (GetFreq x) = "GetFreq " ++ show x
  show (RetFreq x) = "RetFreq " ++ show x

Show Resp where
  show NoneFree = "NoneFree"
  show (Freq x) = "HereYouGo " ++ show x

initState : State
initState = [1..3]

loop : State -> Beh Req ()
loop free = do
  x <- recv
  case x of
    GetFreq pid => do
      case free of
        [] => do
          send pid NoneFree
          loop []
        i :: rest => do
          send pid (Freq i)
          loop rest
    RetFreq i => loop (i :: free)

phone : String -> PID Req -> PID () -> Beh Resp ()
phone name serv m = do
  me <- self
  send serv (GetFreq me)
  resp <- recv
  case resp of
    Freq i => do
      liftIO (putStrLn' ("phone " ++ name ++ " got a frequency: " ++ show i))
      liftIO (sleep 1500)
      send serv (RetFreq i)
      liftIO (putStrLn' ("phone " ++ name ++ " has finished calling."))
      send m ()
    _ => do
      liftIO (putStrLn' ("phone " ++ name ++ " couldn't get frequency!"))
      liftIO (sleep 1000)
      phone name serv m

tester : Beh () ()
tester = do
  me <- self
  -- Spawn a frequency server:
  serv <- spawn (loop initState)
  -- Spawn 5 phones:
  pids <- traverse spawn
            [ phone name serv me
            | name <- [ n ++ show i
                      | n <- ["A","B","C","D","E"]
                      , i <- [1..1]
                      ]
            ]
  -- Wait for all the phones to say they managed to make a p
  _ <- sequence (replicate 50 recv)
  liftIO (putStrLn' "Done!")


main : EIO ()
main = runBeh tester
