module ElixirFFI

%default total
%access public export

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
spawnPtr p = elxcall "Idrislib.spawn_idris" (Ptr -> EIO Ptr) p

unsafeSpawn : (EIO ()) -> EIO Ptr
unsafeSpawn f = spawnPtr (believe_me f)

receivePtr : EIO Ptr
receivePtr = elxcall "Idrislib.receive_any" (EIO Ptr)

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

selfPtr : EIO Ptr
selfPtr = elxcall "self" (EIO Ptr)

sleep : Int -> EIO ()
sleep i = elxcall ":timer.sleep" (Int -> EIO ()) i

-- Generic genserver

namespace Init
  data InitRet : Type -> Type -> Type where
    Ok : (s : state) -> InitRet state reason
    OkTimeout : (s : state) -> (i : Int) -> InitRet state reason
    Ignore : InitRet state reason
    Stop : (r : reason) -> InitRet state reason

%used Ok s
%used OkTimeout s
%used OkTimeout i
%used Stop r

namespace HandleCall

  data Req : Type -> Type -> Type where
    MkReq : (m : msg) -> (s : state) -> Req msg state

  %used MkReq m
  %used MkReq s

  data HandleCallRet : Type -> Type -> Type -> Type where --state reply reason =
    Reply : (r : reply) -> (s : state) -> HandleCallRet state reply reason
    -- | ReplyTimeout reply state Int -> HandleCallRet state reply reason
    -- | ReplyHibernate reply state -> HandleCallRet state reply reason
    -- | NoReply state -> HandleCallRet state reply reason
    -- | NoReplyTimeout state Int -> HandleCallRet state reply reason
    -- | NoReplyHibernate state -> HandleCallRet state reply reason
    -- | Stop reason reply state -> HandleCallRet state reply reason
    -- | StopNoReply reason state -> HandleCallRet state reply reason

  %used Reply r
  %used Reply s

gengenserver : (() -> InitRet state reason) -> (Req msg state -> HandleCallRet state reply reason) -> EIO (Ptr, Ptr)
gengenserver init hcall = elxcall "Idrislib.Gengenserver.idris_start_link" (Ptr -> EIO (Ptr, Ptr)) (believe_me (init, hcall))

gengencall : Ptr -> Ptr -> EIO Ptr
gengencall pid msg = elxcall "Idrislib.Gengenserver.call" (Ptr -> Ptr -> EIO Ptr) (believe_me pid) (believe_me msg)
