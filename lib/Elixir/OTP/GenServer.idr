module Elixir.OTP.GenServer

import Elixir.IO

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
