# This file was compiled by idris-elixir.
defmodule IdrisHelper do
  def error(s) do
    IO.puts ("there was an error: " <> s)
  end
end

defmodule IdrisRts do
  def force(x) do
    case x do
      {:idris_lazy, _, val} -> val
      {:idris_lazy, thunk} -> thunk.()
      _ -> x
    end
  end
end

defmodule IdrisElixir do
  # Prelude.Bool.&&
  idris_Prelude_d_Bool_d__and__and_ = fn e0 ->
    fn e1 ->
      aux1 = e0
      aux2 = case aux1 do
        {:idris_Prelude_d_Bool_d_False} ->
          {:idris_Prelude_d_Bool_d_False}
        {:idris_Prelude_d_Bool_d_True} ->
          IdrisRts.force(e1)
      end
      aux2
    end
  end
  # Prelude.Interfaces.+
  idris_Prelude_d_Interfaces_d__43_ = fn e0 ->
    fn e1 ->
      aux1 = e1
      aux2 = case aux1 do
        {:idris_constructor_s_of_s_Prelude_d_Interfaces_d_Num, in0, in1} ->
          in0
      end
      aux2
    end
  end
  # ForeignEnv.::
  idris_ForeignEnv_d__colon__colon_ = fn ->
    {:idris_ForeignEnv_d__colon__colon_}
  end
  # Prelude.List.::
  idris_Prelude_d_List_d__colon__colon_ = fn arg_0 ->
    fn arg_1 ->
      {:idris_Prelude_d_List_d__colon__colon_, arg_0, arg_1}
    end
  end
  # Prelude.Stream.::
  idris_Prelude_d_Stream_d__colon__colon_ = fn arg_0 ->
    {:idris_Prelude_d_Stream_d__colon__colon_, arg_0}
  end
  # =
  idris__eq_ = fn arg_0 ->
    fn arg_1 ->
      fn arg_2 ->
        fn arg_3 ->
          {:idris__eq_, arg_0, arg_1, arg_2, arg_3}
        end
      end
    end
  end
  # Language.Reflection.ATDouble
  idris_Language_d_Reflection_d_ATDouble = fn ->
    {:idris_Language_d_Reflection_d_ATDouble}
  end
  # Language.Reflection.ATInt
  idris_Language_d_Reflection_d_ATInt = fn ->
    {:idris_Language_d_Reflection_d_ATInt}
  end
  # Language.Reflection.AType
  idris_Language_d_Reflection_d_AType = fn ->
    {:idris_Language_d_Reflection_d_AType}
  end
  # Prelude.WellFounded.Access
  idris_Prelude_d_WellFounded_d_Access = fn ->
    {:idris_Prelude_d_WellFounded_d_Access}
  end
  # Prelude.WellFounded.Accessible
  idris_Prelude_d_WellFounded_d_Accessible = fn arg_0 ->
    fn arg_1 ->
      fn arg_2 ->
        {:idris_Prelude_d_WellFounded_d_Accessible, arg_0, arg_1, arg_2}
      end
    end
  end
  # Prelude.Nat.Additive
  idris_Prelude_d_Nat_d_Additive = fn ->
    {:idris_Prelude_d_Nat_d_Additive}
  end
  # Language.Reflection.AllTypes
  idris_Language_d_Reflection_d_AllTypes = fn ->
    {:idris_Language_d_Reflection_d_AllTypes}
  end
  # Language.Reflection.Errors.AlreadyDefined
  idris_Language_d_Reflection_d_Errors_d_AlreadyDefined = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_AlreadyDefined}
  end
  # Prelude.Applicative.Alternative
  idris_Prelude_d_Applicative_d_Alternative = fn arg_0 ->
    {:idris_Prelude_d_Applicative_d_Alternative, arg_0}
  end
  # Language.Reflection.App
  idris_Language_d_Reflection_d_App = fn ->
    {:idris_Language_d_Reflection_d_App}
  end
  # Prelude.Show.App
  idris_Prelude_d_Show_d_App = fn ->
    {:idris_Prelude_d_Show_d_App}
  end
  # Prelude.File.Append
  idris_Prelude_d_File_d_Append = fn ->
    {:idris_Prelude_d_File_d_Append}
  end
  # Prelude.Applicative.Applicative
  idris_Prelude_d_Applicative_d_Applicative = fn arg_0 ->
    {:idris_Prelude_d_Applicative_d_Applicative, arg_0}
  end
  # Language.Reflection.ApplyTactic
  idris_Language_d_Reflection_d_ApplyTactic = fn ->
    {:idris_Language_d_Reflection_d_ApplyTactic}
  end
  # Language.Reflection.ArithTy
  idris_Language_d_Reflection_d_ArithTy = fn ->
    {:idris_Language_d_Reflection_d_ArithTy}
  end
  # Language.Reflection.B16
  idris_Language_d_Reflection_d_B16 = fn ->
    {:idris_Language_d_Reflection_d_B16}
  end
  # Language.Reflection.B32
  idris_Language_d_Reflection_d_B32 = fn ->
    {:idris_Language_d_Reflection_d_B32}
  end
  # Language.Reflection.B64
  idris_Language_d_Reflection_d_B64 = fn ->
    {:idris_Language_d_Reflection_d_B64}
  end
  # Language.Reflection.B8
  idris_Language_d_Reflection_d_B8 = fn ->
    {:idris_Language_d_Reflection_d_B8}
  end
  # Language.Reflection.BI
  idris_Language_d_Reflection_d_BI = fn ->
    {:idris_Language_d_Reflection_d_BI}
  end
  # Prelude.Show.Backtick
  idris_Prelude_d_Show_d_Backtick = fn ->
    {:idris_Prelude_d_Show_d_Backtick}
  end
  # Language.Reflection.Bind
  idris_Language_d_Reflection_d_Bind = fn ->
    {:idris_Language_d_Reflection_d_Bind}
  end
  # Language.Reflection.Binder
  idris_Language_d_Reflection_d_Binder = fn arg_0 ->
    {:idris_Language_d_Reflection_d_Binder, arg_0}
  end
  # Prelude.Bool.Bool
  idris_Prelude_d_Bool_d_Bool = fn ->
    {:idris_Prelude_d_Bool_d_Bool}
  end
  # Ownership.Borrowed
  idris_Ownership_d_Borrowed = fn arg_0 ->
    {:idris_Ownership_d_Borrowed, arg_0}
  end
  # Language.Reflection.Bound
  idris_Language_d_Reflection_d_Bound = fn ->
    {:idris_Language_d_Reflection_d_Bound}
  end
  # Language.Reflection.ByReflection
  idris_Language_d_Reflection_d_ByReflection = fn ->
    {:idris_Language_d_Reflection_d_ByReflection}
  end
  # CData
  idris_CData = fn ->
    {:idris_CData}
  end
  # FFI_C.CFnPtr
  idris_FFI___C_d_CFnPtr = fn arg_0 ->
    {:idris_FFI___C_d_CFnPtr, arg_0}
  end
  # FFI_C.C_Any
  idris_FFI___C_d_C___Any = fn ->
    {:idris_FFI___C_d_C___Any}
  end
  # FFI_C.C_CData
  idris_FFI___C_d_C___CData = fn ->
    {:idris_FFI___C_d_C___CData}
  end
  # FFI_C.C_Float
  idris_FFI___C_d_C___Float = fn ->
    {:idris_FFI___C_d_C___Float}
  end
  # FFI_C.C_Fn
  idris_FFI___C_d_C___Fn = fn ->
    {:idris_FFI___C_d_C___Fn}
  end
  # FFI_C.C_FnBase
  idris_FFI___C_d_C___FnBase = fn ->
    {:idris_FFI___C_d_C___FnBase}
  end
  # FFI_C.C_FnIO
  idris_FFI___C_d_C___FnIO = fn ->
    {:idris_FFI___C_d_C___FnIO}
  end
  # FFI_C.C_FnT
  idris_FFI___C_d_C___FnT = fn ->
    {:idris_FFI___C_d_C___FnT}
  end
  # FFI_C.C_FnTypes
  idris_FFI___C_d_C___FnTypes = fn arg_0 ->
    {:idris_FFI___C_d_C___FnTypes, arg_0}
  end
  # FFI_C.C_IntBits16
  idris_FFI___C_d_C___IntBits16 = fn ->
    {:idris_FFI___C_d_C___IntBits16}
  end
  # FFI_C.C_IntBits32
  idris_FFI___C_d_C___IntBits32 = fn ->
    {:idris_FFI___C_d_C___IntBits32}
  end
  # FFI_C.C_IntBits64
  idris_FFI___C_d_C___IntBits64 = fn ->
    {:idris_FFI___C_d_C___IntBits64}
  end
  # FFI_C.C_IntBits8
  idris_FFI___C_d_C___IntBits8 = fn ->
    {:idris_FFI___C_d_C___IntBits8}
  end
  # FFI_C.C_IntChar
  idris_FFI___C_d_C___IntChar = fn ->
    {:idris_FFI___C_d_C___IntChar}
  end
  # FFI_C.C_IntNative
  idris_FFI___C_d_C___IntNative = fn ->
    {:idris_FFI___C_d_C___IntNative}
  end
  # FFI_C.C_IntT
  idris_FFI___C_d_C___IntT = fn ->
    {:idris_FFI___C_d_C___IntT}
  end
  # FFI_C.C_IntTypes
  idris_FFI___C_d_C___IntTypes = fn arg_0 ->
    {:idris_FFI___C_d_C___IntTypes, arg_0}
  end
  # FFI_C.C_MPtr
  idris_FFI___C_d_C___MPtr = fn ->
    {:idris_FFI___C_d_C___MPtr}
  end
  # FFI_C.C_Ptr
  idris_FFI___C_d_C___Ptr = fn ->
    {:idris_FFI___C_d_C___Ptr}
  end
  # FFI_C.C_Str
  idris_FFI___C_d_C___Str = fn ->
    {:idris_FFI___C_d_C___Str}
  end
  # FFI_C.C_Types
  idris_FFI___C_d_C___Types = fn arg_0 ->
    {:idris_FFI___C_d_C___Types, arg_0}
  end
  # FFI_C.C_Unit
  idris_FFI___C_d_C___Unit = fn ->
    {:idris_FFI___C_d_C___Unit}
  end
  # Language.Reflection.Errors.CantConvert
  idris_Language_d_Reflection_d_Errors_d_CantConvert = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_CantConvert}
  end
  # Language.Reflection.Errors.CantInferType
  idris_Language_d_Reflection_d_Errors_d_CantInferType = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_CantInferType}
  end
  # Language.Reflection.Errors.CantIntroduce
  idris_Language_d_Reflection_d_Errors_d_CantIntroduce = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_CantIntroduce}
  end
  # Language.Reflection.Errors.CantMatch
  idris_Language_d_Reflection_d_Errors_d_CantMatch = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_CantMatch}
  end
  # Language.Reflection.Errors.CantResolve
  idris_Language_d_Reflection_d_Errors_d_CantResolve = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_CantResolve}
  end
  # Language.Reflection.Errors.CantResolveAlts
  idris_Language_d_Reflection_d_Errors_d_CantResolveAlts = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_CantResolveAlts}
  end
  # Language.Reflection.Errors.CantSolveGoal
  idris_Language_d_Reflection_d_Errors_d_CantSolveGoal = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_CantSolveGoal}
  end
  # Language.Reflection.Errors.CantUnify
  idris_Language_d_Reflection_d_Errors_d_CantUnify = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_CantUnify}
  end
  # Language.Reflection.Case
  idris_Language_d_Reflection_d_Case = fn ->
    {:idris_Language_d_Reflection_d_Case}
  end
  # Language.Reflection.CaseN
  idris_Language_d_Reflection_d_CaseN = fn ->
    {:idris_Language_d_Reflection_d_CaseN}
  end
  # Prelude.Cast.Cast
  idris_Prelude_d_Cast_d_Cast = fn arg_0 ->
    fn arg_1 ->
      {:idris_Prelude_d_Cast_d_Cast, arg_0, arg_1}
    end
  end
  # Language.Reflection.Ch
  idris_Language_d_Reflection_d_Ch = fn ->
    {:idris_Language_d_Reflection_d_Ch}
  end
  # Language.Reflection.Claim
  idris_Language_d_Reflection_d_Claim = fn ->
    {:idris_Language_d_Reflection_d_Claim}
  end
  # Prelude.Nat.CmpEQ
  idris_Prelude_d_Nat_d_CmpEQ = fn ->
    {:idris_Prelude_d_Nat_d_CmpEQ}
  end
  # Prelude.Nat.CmpGT
  idris_Prelude_d_Nat_d_CmpGT = fn ->
    {:idris_Prelude_d_Nat_d_CmpGT}
  end
  # Prelude.Nat.CmpLT
  idris_Prelude_d_Nat_d_CmpLT = fn ->
    {:idris_Prelude_d_Nat_d_CmpLT}
  end
  # Prelude.Nat.CmpNat
  idris_Prelude_d_Nat_d_CmpNat = fn arg_0 ->
    fn arg_1 ->
      {:idris_Prelude_d_Nat_d_CmpNat, arg_0, arg_1}
    end
  end
  # Language.Reflection.Compute
  idris_Language_d_Reflection_d_Compute = fn ->
    {:idris_Language_d_Reflection_d_Compute}
  end
  # Language.Reflection.Const
  idris_Language_d_Reflection_d_Const = fn ->
    {:idris_Language_d_Reflection_d_Const}
  end
  # Language.Reflection.Elab.Constraint
  idris_Language_d_Reflection_d_Elab_d_Constraint = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Constraint}
  end
  # Language.Reflection.Elab.Constructor
  idris_Language_d_Reflection_d_Elab_d_Constructor = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Constructor}
  end
  # Language.Reflection.Elab.ConstructorDefn
  idris_Language_d_Reflection_d_Elab_d_ConstructorDefn = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_ConstructorDefn}
  end
  # Language.Reflection.Elab.CtorArg
  idris_Language_d_Reflection_d_Elab_d_CtorArg = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_CtorArg}
  end
  # Language.Reflection.Elab.CtorField
  idris_Language_d_Reflection_d_Elab_d_CtorField = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_CtorField}
  end
  # Language.Reflection.Elab.CtorParameter
  idris_Language_d_Reflection_d_Elab_d_CtorParameter = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_CtorParameter}
  end
  # Language.Reflection.DCon
  idris_Language_d_Reflection_d_DCon = fn ->
    {:idris_Language_d_Reflection_d_DCon}
  end
  # FFI_Export.DHere
  idris_FFI___Export_d_DHere = fn ->
    {:idris_FFI___Export_d_DHere}
  end
  # Builtins.DPair
  idris_Builtins_d_DPair = fn arg_0 ->
    fn arg_1 ->
      {:idris_Builtins_d_DPair, arg_0, arg_1}
    end
  end
  # FFI_Export.DThere
  idris_FFI___Export_d_DThere = fn ->
    {:idris_FFI___Export_d_DThere}
  end
  # FFI_Export.Data
  idris_FFI___Export_d_Data = fn arg_0 ->
    fn arg_1 ->
      fn arg_2 ->
        {:idris_FFI___Export_d_Data, arg_0, arg_1, arg_2}
      end
    end
  end
  # FFI_Export.DataDefined
  idris_FFI___Export_d_DataDefined = fn arg_0 ->
    fn arg_1 ->
      fn arg_2 ->
        fn arg_3 ->
          {:idris_FFI___Export_d_DataDefined, arg_0, arg_1, arg_2, arg_3}
        end
      end
    end
  end
  # Language.Reflection.Elab.DataDefn
  idris_Language_d_Reflection_d_Elab_d_DataDefn = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_DataDefn}
  end
  # Language.Reflection.Elab.Datatype
  idris_Language_d_Reflection_d_Elab_d_Datatype = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Datatype}
  end
  # Prelude.Basics.Dec
  idris_Prelude_d_Basics_d_Dec = fn arg_0 ->
    {:idris_Prelude_d_Basics_d_Dec, arg_0}
  end
  # Decidable.Equality.DecEq
  idris_Decidable_d_Equality_d_DecEq = fn arg_0 ->
    {:idris_Decidable_d_Equality_d_DecEq, arg_0}
  end
  # Language.Reflection.Elab.Declare
  idris_Language_d_Reflection_d_Elab_d_Declare = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Declare}
  end
  # Language.Reflection.Elab.DefineDatatype
  idris_Language_d_Reflection_d_Elab_d_DefineDatatype = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_DefineDatatype}
  end
  # Language.Reflection.Elab.DefineFun
  idris_Language_d_Reflection_d_Elab_d_DefineFun = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_DefineFun}
  end
  # Delay
  idris_Delay = fn arg_0 ->
    {:idris_Delay, arg_0}
  end
  # DelayReason
  idris_DelayReason = fn ->
    {:idris_DelayReason}
  end
  # Delayed
  idris_Delayed = fn arg_0 ->
    fn arg_1 ->
      {:idris_Delayed, arg_0, arg_1}
    end
  end
  # Prelude.Show.Dollar
  idris_Prelude_d_Show_d_Dollar = fn ->
    {:idris_Prelude_d_Show_d_Dollar}
  end
  # Prelude.Interfaces.EQ
  idris_Prelude_d_Interfaces_d_EQ = fn ->
    {:idris_Prelude_d_Interfaces_d_EQ}
  end
  # Prelude.Either.Either
  idris_Prelude_d_Either_d_Either = fn arg_0 ->
    fn arg_1 ->
      {:idris_Prelude_d_Either_d_Either, arg_0, arg_1}
    end
  end
  # Language.Reflection.Elab.Elab
  idris_Language_d_Reflection_d_Elab_d_Elab = fn arg_0 ->
    {:idris_Language_d_Reflection_d_Elab_d_Elab, arg_0}
  end
  # Prelude.Pairs.Element
  idris_Prelude_d_Pairs_d_Element = fn ->
    {:idris_Prelude_d_Pairs_d_Element}
  end
  # Language.Reflection.ElimN
  idris_Language_d_Reflection_d_ElimN = fn ->
    {:idris_Language_d_Reflection_d_ElimN}
  end
  # FFI_Export.End
  idris_FFI___Export_d_End = fn ->
    {:idris_FFI___Export_d_End}
  end
  # Prelude.Enum
  idris_Prelude_d_Enum = fn arg_0 ->
    {:idris_Prelude_d_Enum, arg_0}
  end
  # Prelude.Interfaces.Eq
  idris_Prelude_d_Interfaces_d_Eq = fn arg_0 ->
    {:idris_Prelude_d_Interfaces_d_Eq, arg_0}
  end
  # Prelude.Show.Eq
  idris_Prelude_d_Show_d_Eq = fn ->
    {:idris_Prelude_d_Show_d_Eq}
  end
  # Language.Reflection.Elab.Erased
  idris_Language_d_Reflection_d_Elab_d_Erased = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Erased}
  end
  # Language.Reflection.Erased
  idris_Language_d_Reflection_d_Erased = fn ->
    {:idris_Language_d_Reflection_d_Erased}
  end
  # Language.Reflection.Elab.Erasure
  idris_Language_d_Reflection_d_Elab_d_Erasure = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Erasure}
  end
  # Language.Reflection.Errors.Err
  idris_Language_d_Reflection_d_Errors_d_Err = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_Err}
  end
  # Prelude.Providers.Error
  idris_Prelude_d_Providers_d_Error = fn ->
    {:idris_Prelude_d_Providers_d_Error}
  end
  # Language.Reflection.ErrorReportPart
  idris_Language_d_Reflection_d_ErrorReportPart = fn ->
    {:idris_Language_d_Reflection_d_ErrorReportPart}
  end
  # Prelude.Pairs.Evidence
  idris_Prelude_d_Pairs_d_Evidence = fn ->
    {:idris_Prelude_d_Pairs_d_Evidence}
  end
  # Language.Reflection.Exact
  idris_Language_d_Reflection_d_Exact = fn ->
    {:idris_Language_d_Reflection_d_Exact}
  end
  # Prelude.Pairs.Exists
  idris_Prelude_d_Pairs_d_Exists = fn arg_0 ->
    fn arg_1 ->
      {:idris_Prelude_d_Pairs_d_Exists, arg_0, arg_1}
    end
  end
  # Language.Reflection.Elab.Explicit
  idris_Language_d_Reflection_d_Elab_d_Explicit = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Explicit}
  end
  # ForeignEnv.FEnv
  idris_ForeignEnv_d_FEnv = fn arg_0 ->
    fn arg_1 ->
      {:idris_ForeignEnv_d_FEnv, arg_0, arg_1}
    end
  end
  # FFI
  idris_FFI = fn ->
    {:idris_FFI}
  end
  # FFI_Export.FFI_Base
  idris_FFI___Export_d_FFI___Base = fn arg_0 ->
    fn arg_1 ->
      fn arg_2 ->
        {:idris_FFI___Export_d_FFI___Base, arg_0, arg_1, arg_2}
      end
    end
  end
  # FFI_Export.FFI_ExpType
  idris_FFI___Export_d_FFI___ExpType = fn arg_0 ->
    fn arg_1 ->
      {:idris_FFI___Export_d_FFI___ExpType, arg_0, arg_1}
    end
  end
  # FFI_Export.FFI_Export
  idris_FFI___Export_d_FFI___Export = fn arg_0 ->
    fn arg_1 ->
      fn arg_2 ->
        {:idris_FFI___Export_d_FFI___Export, arg_0, arg_1, arg_2}
      end
    end
  end
  # FFI_Export.FFI_Exportable
  idris_FFI___Export_d_FFI___Exportable = fn arg_0 ->
    fn arg_1 ->
      fn arg_2 ->
        {:idris_FFI___Export_d_FFI___Exportable, arg_0, arg_1, arg_2}
      end
    end
  end
  # FFI_Export.FFI_Fun
  idris_FFI___Export_d_FFI___Fun = fn arg_0 ->
    fn arg_1 ->
      {:idris_FFI___Export_d_FFI___Fun, arg_0, arg_1}
    end
  end
  # FFI_Export.FFI_IO
  idris_FFI___Export_d_FFI___IO = fn arg_0 ->
    {:idris_FFI___Export_d_FFI___IO, arg_0}
  end
  # FFI_Export.FFI_Prim
  idris_FFI___Export_d_FFI___Prim = fn arg_0 ->
    {:idris_FFI___Export_d_FFI___Prim, arg_0}
  end
  # FFI_Export.FFI_Ret
  idris_FFI___Export_d_FFI___Ret = fn arg_0 ->
    {:idris_FFI___Export_d_FFI___Ret, arg_0}
  end
  # FFun
  idris_FFun = fn ->
    {:idris_FFun}
  end
  # Prelude.File.FHandle
  idris_Prelude_d_File_d_FHandle = fn arg_0 ->
    {:idris_Prelude_d_File_d_FHandle, arg_0}
  end
  # FRet
  idris_FRet = fn ->
    {:idris_FRet}
  end
  # FTy
  idris_FTy = fn arg_0 ->
    fn arg_1 ->
      fn arg_2 ->
        {:idris_FTy, arg_0, arg_1, arg_2}
      end
    end
  end
  # Language.Reflection.Fail
  idris_Language_d_Reflection_d_Fail = fn ->
    {:idris_Language_d_Reflection_d_Fail}
  end
  # Prelude.Bool.False
  idris_Prelude_d_Bool_d_False = fn ->
    {:idris_Prelude_d_Bool_d_False}
  end
  # Prelude.File.File
  idris_Prelude_d_File_d_File = fn ->
    {:idris_Prelude_d_File_d_File}
  end
  # Prelude.File.FileError
  idris_Prelude_d_File_d_FileError = fn ->
    {:idris_Prelude_d_File_d_FileError}
  end
  # Language.Reflection.FileLoc
  idris_Language_d_Reflection_d_FileLoc = fn ->
    {:idris_Language_d_Reflection_d_FileLoc}
  end
  # Prelude.File.FileNotFound
  idris_Prelude_d_File_d_FileNotFound = fn ->
    {:idris_Prelude_d_File_d_FileNotFound}
  end
  # Prelude.File.FileReadError
  idris_Prelude_d_File_d_FileReadError = fn ->
    {:idris_Prelude_d_File_d_FileReadError}
  end
  # Prelude.File.FileWriteError
  idris_Prelude_d_File_d_FileWriteError = fn ->
    {:idris_Prelude_d_File_d_FileWriteError}
  end
  # Language.Reflection.Fill
  idris_Language_d_Reflection_d_Fill = fn ->
    {:idris_Language_d_Reflection_d_Fill}
  end
  # Language.Reflection.Elab.Fixity
  idris_Language_d_Reflection_d_Elab_d_Fixity = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Fixity}
  end
  # Language.Reflection.Fl
  idris_Language_d_Reflection_d_Fl = fn ->
    {:idris_Language_d_Reflection_d_Fl}
  end
  # Language.Reflection.Focus
  idris_Language_d_Reflection_d_Focus = fn ->
    {:idris_Language_d_Reflection_d_Focus}
  end
  # Prelude.Foldable.Foldable
  idris_Prelude_d_Foldable_d_Foldable = fn arg_0 ->
    {:idris_Prelude_d_Foldable_d_Foldable, arg_0}
  end
  # Main.FooBar
  idris_Main_d_FooBar = fn arg_0 ->
    fn arg_1 ->
      {:idris_Main_d_FooBar, arg_0, arg_1}
    end
  end
  # Main.FooFoo
  idris_Main_d_FooFoo = fn arg_0 ->
    fn arg_1 ->
      {:idris_Main_d_FooFoo, arg_0, arg_1}
    end
  end
  # Force
  idris_Force = fn e0 ->
    fn e1 ->
      fn e2 ->
        IdrisRts.force(e2)
      end
    end
  end
  # Language.Reflection.Forgot
  idris_Language_d_Reflection_d_Forgot = fn ->
    {:idris_Language_d_Reflection_d_Forgot}
  end
  # Prelude.Interfaces.Fractional
  idris_Prelude_d_Interfaces_d_Fractional = fn arg_0 ->
    {:idris_Prelude_d_Interfaces_d_Fractional, arg_0}
  end
  # FFI_Export.Fun
  idris_FFI___Export_d_Fun = fn arg_0 ->
    fn arg_1 ->
      fn arg_2 ->
        fn arg_3 ->
          {:idris_FFI___Export_d_Fun, arg_0, arg_1, arg_2, arg_3}
        end
      end
    end
  end
  # Language.Reflection.Elab.FunArg
  idris_Language_d_Reflection_d_Elab_d_FunArg = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_FunArg}
  end
  # Language.Reflection.Elab.FunClause
  idris_Language_d_Reflection_d_Elab_d_FunClause = fn arg_0 ->
    {:idris_Language_d_Reflection_d_Elab_d_FunClause, arg_0}
  end
  # Language.Reflection.Elab.FunDefn
  idris_Language_d_Reflection_d_Elab_d_FunDefn = fn arg_0 ->
    {:idris_Language_d_Reflection_d_Elab_d_FunDefn, arg_0}
  end
  # Prelude.Functor.Functor
  idris_Prelude_d_Functor_d_Functor = fn arg_0 ->
    {:idris_Prelude_d_Functor_d_Functor, arg_0}
  end
  # Language.Reflection.GHole
  idris_Language_d_Reflection_d_GHole = fn ->
    {:idris_Language_d_Reflection_d_GHole}
  end
  # Prelude.Interfaces.GT
  idris_Prelude_d_Interfaces_d_GT = fn ->
    {:idris_Prelude_d_Interfaces_d_GT}
  end
  # Prelude.File.GenericFileError
  idris_Prelude_d_File_d_GenericFileError = fn ->
    {:idris_Prelude_d_File_d_GenericFileError}
  end
  # Prelude.Nat.GetAdditive
  idris_Prelude_d_Nat_d_GetAdditive = fn ->
    {:idris_Prelude_d_Nat_d_GetAdditive}
  end
  # Prelude.Nat.GetMultiplicative
  idris_Prelude_d_Nat_d_GetMultiplicative = fn ->
    {:idris_Prelude_d_Nat_d_GetMultiplicative}
  end
  # Language.Reflection.GoalType
  idris_Language_d_Reflection_d_GoalType = fn ->
    {:idris_Language_d_Reflection_d_GoalType}
  end
  # Language.Reflection.Guess
  idris_Language_d_Reflection_d_Guess = fn ->
    {:idris_Language_d_Reflection_d_Guess}
  end
  # Main.Hello
  idris_Main_d_Hello = fn ->
    {:idris_Main_d_Hello}
  end
  # Language.Reflection.Hole
  idris_Language_d_Reflection_d_Hole = fn ->
    {:idris_Language_d_Reflection_d_Hole}
  end
  # Language.Reflection.I
  idris_Language_d_Reflection_d_I = fn ->
    {:idris_Language_d_Reflection_d_I}
  end
  # IO'
  idris_IO_prime_ = fn arg_0 ->
    fn arg_1 ->
      {:idris_IO_prime_, arg_0, arg_1}
    end
  end
  # Language.Reflection.IT16
  idris_Language_d_Reflection_d_IT16 = fn ->
    {:idris_Language_d_Reflection_d_IT16}
  end
  # Language.Reflection.IT32
  idris_Language_d_Reflection_d_IT32 = fn ->
    {:idris_Language_d_Reflection_d_IT32}
  end
  # Language.Reflection.IT64
  idris_Language_d_Reflection_d_IT64 = fn ->
    {:idris_Language_d_Reflection_d_IT64}
  end
  # Language.Reflection.IT8
  idris_Language_d_Reflection_d_IT8 = fn ->
    {:idris_Language_d_Reflection_d_IT8}
  end
  # Language.Reflection.ITBig
  idris_Language_d_Reflection_d_ITBig = fn ->
    {:idris_Language_d_Reflection_d_ITBig}
  end
  # Language.Reflection.ITChar
  idris_Language_d_Reflection_d_ITChar = fn ->
    {:idris_Language_d_Reflection_d_ITChar}
  end
  # Language.Reflection.ITFixed
  idris_Language_d_Reflection_d_ITFixed = fn ->
    {:idris_Language_d_Reflection_d_ITFixed}
  end
  # Language.Reflection.ITNative
  idris_Language_d_Reflection_d_ITNative = fn ->
    {:idris_Language_d_Reflection_d_ITNative}
  end
  # Language.Reflection.Implementation
  idris_Language_d_Reflection_d_Implementation = fn ->
    {:idris_Language_d_Reflection_d_Implementation}
  end
  # Language.Reflection.ImplementationCtorN
  idris_Language_d_Reflection_d_ImplementationCtorN = fn ->
    {:idris_Language_d_Reflection_d_ImplementationCtorN}
  end
  # Language.Reflection.ImplementationN
  idris_Language_d_Reflection_d_ImplementationN = fn ->
    {:idris_Language_d_Reflection_d_ImplementationN}
  end
  # Language.Reflection.Elab.Implicit
  idris_Language_d_Reflection_d_Elab_d_Implicit = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Implicit}
  end
  # Prelude.List.InBounds
  idris_Prelude_d_List_d_InBounds = fn arg_0 ->
    fn arg_1 ->
      fn arg_2 ->
        {:idris_Prelude_d_List_d_InBounds, arg_0, arg_1, arg_2}
      end
    end
  end
  # Prelude.List.InFirst
  idris_Prelude_d_List_d_InFirst = fn ->
    {:idris_Prelude_d_List_d_InFirst}
  end
  # Prelude.List.InLater
  idris_Prelude_d_List_d_InLater = fn ->
    {:idris_Prelude_d_List_d_InLater}
  end
  # Language.Reflection.Errors.Inaccessible
  idris_Language_d_Reflection_d_Errors_d_Inaccessible = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_Inaccessible}
  end
  # Language.Reflection.Errors.IncompleteTerm
  idris_Language_d_Reflection_d_Errors_d_IncompleteTerm = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_IncompleteTerm}
  end
  # Language.Reflection.Induction
  idris_Language_d_Reflection_d_Induction = fn ->
    {:idris_Language_d_Reflection_d_Induction}
  end
  # Infinite
  idris_Infinite = fn ->
    {:idris_Infinite}
  end
  # Language.Reflection.Errors.InfiniteUnify
  idris_Language_d_Reflection_d_Errors_d_InfiniteUnify = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_InfiniteUnify}
  end
  # Language.Reflection.Elab.Infix
  idris_Language_d_Reflection_d_Elab_d_Infix = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Infix}
  end
  # Language.Reflection.Elab.Infixl
  idris_Language_d_Reflection_d_Elab_d_Infixl = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Infixl}
  end
  # Language.Reflection.Elab.Infixr
  idris_Language_d_Reflection_d_Elab_d_Infixr = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Infixr}
  end
  # Language.Reflection.IntTy
  idris_Language_d_Reflection_d_IntTy = fn ->
    {:idris_Language_d_Reflection_d_IntTy}
  end
  # Prelude.Interfaces.Integral
  idris_Prelude_d_Interfaces_d_Integral = fn arg_0 ->
    {:idris_Prelude_d_Interfaces_d_Integral, arg_0}
  end
  # Language.Reflection.Errors.InternalMsg
  idris_Language_d_Reflection_d_Errors_d_InternalMsg = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_InternalMsg}
  end
  # Language.Reflection.Intro
  idris_Language_d_Reflection_d_Intro = fn ->
    {:idris_Language_d_Reflection_d_Intro}
  end
  # Language.Reflection.Intros
  idris_Language_d_Reflection_d_Intros = fn ->
    {:idris_Language_d_Reflection_d_Intros}
  end
  # Language.Reflection.Errors.InvalidTCArg
  idris_Language_d_Reflection_d_Errors_d_InvalidTCArg = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_InvalidTCArg}
  end
  # Prelude.Maybe.IsJust
  idris_Prelude_d_Maybe_d_IsJust = fn arg_0 ->
    fn arg_1 ->
      {:idris_Prelude_d_Maybe_d_IsJust, arg_0, arg_1}
    end
  end
  # Prelude.List.IsNonEmpty
  idris_Prelude_d_List_d_IsNonEmpty = fn ->
    {:idris_Prelude_d_List_d_IsNonEmpty}
  end
  # Prelude.Maybe.ItIsJust
  idris_Prelude_d_Maybe_d_ItIsJust = fn ->
    {:idris_Prelude_d_Maybe_d_ItIsJust}
  end
  # JS_Float
  idris_JS___Float = fn ->
    {:idris_JS___Float}
  end
  # JS_Fn
  idris_JS___Fn = fn ->
    {:idris_JS___Fn}
  end
  # JS_FnBase
  idris_JS___FnBase = fn ->
    {:idris_JS___FnBase}
  end
  # JS_FnIO
  idris_JS___FnIO = fn ->
    {:idris_JS___FnIO}
  end
  # JS_FnT
  idris_JS___FnT = fn ->
    {:idris_JS___FnT}
  end
  # JS_FnTypes
  idris_JS___FnTypes = fn arg_0 ->
    {:idris_JS___FnTypes, arg_0}
  end
  # JS_IntChar
  idris_JS___IntChar = fn ->
    {:idris_JS___IntChar}
  end
  # JS_IntNative
  idris_JS___IntNative = fn ->
    {:idris_JS___IntNative}
  end
  # JS_IntT
  idris_JS___IntT = fn ->
    {:idris_JS___IntT}
  end
  # JS_IntTypes
  idris_JS___IntTypes = fn arg_0 ->
    {:idris_JS___IntTypes, arg_0}
  end
  # JS_Ptr
  idris_JS___Ptr = fn ->
    {:idris_JS___Ptr}
  end
  # JS_Str
  idris_JS___Str = fn ->
    {:idris_JS___Str}
  end
  # JS_Types
  idris_JS___Types = fn arg_0 ->
    {:idris_JS___Types, arg_0}
  end
  # JS_Unit
  idris_JS___Unit = fn ->
    {:idris_JS___Unit}
  end
  # JsFn
  idris_JsFn = fn arg_0 ->
    {:idris_JsFn, arg_0}
  end
  # Prelude.Maybe.Just
  idris_Prelude_d_Maybe_d_Just = fn arg_0 ->
    {:idris_Prelude_d_Maybe_d_Just, arg_0}
  end
  # Prelude.Interfaces.LT
  idris_Prelude_d_Interfaces_d_LT = fn ->
    {:idris_Prelude_d_Interfaces_d_LT}
  end
  # Prelude.Nat.LTE
  idris_Prelude_d_Nat_d_LTE = fn arg_0 ->
    fn arg_1 ->
      {:idris_Prelude_d_Nat_d_LTE, arg_0, arg_1}
    end
  end
  # Prelude.Nat.LTESucc
  idris_Prelude_d_Nat_d_LTESucc = fn ->
    {:idris_Prelude_d_Nat_d_LTESucc}
  end
  # Prelude.Nat.LTEZero
  idris_Prelude_d_Nat_d_LTEZero = fn ->
    {:idris_Prelude_d_Nat_d_LTEZero}
  end
  # Language.Reflection.Lam
  idris_Language_d_Reflection_d_Lam = fn ->
    {:idris_Language_d_Reflection_d_Lam}
  end
  # LazyValue
  idris_LazyValue = fn ->
    {:idris_LazyValue}
  end
  # Prelude.Either.Left
  idris_Prelude_d_Either_d_Left = fn arg_0 ->
    {:idris_Prelude_d_Either_d_Left, arg_0}
  end
  # Prelude.Nat.LeftIsNotZero
  idris_Prelude_d_Nat_d_LeftIsNotZero = fn ->
    {:idris_Prelude_d_Nat_d_LeftIsNotZero}
  end
  # Language.Reflection.Let
  idris_Language_d_Reflection_d_Let = fn ->
    {:idris_Language_d_Reflection_d_Let}
  end
  # Language.Reflection.LetTac
  idris_Language_d_Reflection_d_LetTac = fn ->
    {:idris_Language_d_Reflection_d_LetTac}
  end
  # Language.Reflection.LetTacTy
  idris_Language_d_Reflection_d_LetTacTy = fn ->
    {:idris_Language_d_Reflection_d_LetTacTy}
  end
  # Prelude.List.List
  idris_Prelude_d_List_d_List = fn arg_0 ->
    {:idris_Prelude_d_List_d_List, arg_0}
  end
  # Language.Reflection.Errors.LoadingFailed
  idris_Language_d_Reflection_d_Errors_d_LoadingFailed = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_LoadingFailed}
  end
  # Language.Reflection.MN
  idris_Language_d_Reflection_d_MN = fn ->
    {:idris_Language_d_Reflection_d_MN}
  end
  # ManagedPtr
  idris_ManagedPtr = fn ->
    {:idris_ManagedPtr}
  end
  # Prelude.Interfaces.MaxBound
  idris_Prelude_d_Interfaces_d_MaxBound = fn arg_0 ->
    {:idris_Prelude_d_Interfaces_d_MaxBound, arg_0}
  end
  # Prelude.Maybe.Maybe
  idris_Prelude_d_Maybe_d_Maybe = fn arg_0 ->
    {:idris_Prelude_d_Maybe_d_Maybe, arg_0}
  end
  # Language.Reflection.MetaN
  idris_Language_d_Reflection_d_MetaN = fn ->
    {:idris_Language_d_Reflection_d_MetaN}
  end
  # Language.Reflection.MethodN
  idris_Language_d_Reflection_d_MethodN = fn ->
    {:idris_Language_d_Reflection_d_MethodN}
  end
  # Prelude.Interfaces.MinBound
  idris_Prelude_d_Interfaces_d_MinBound = fn arg_0 ->
    {:idris_Prelude_d_Interfaces_d_MinBound, arg_0}
  end
  # FFI_C.MkCFnPtr
  idris_FFI___C_d_MkCFnPtr = fn arg_0 ->
    {:idris_FFI___C_d_MkCFnPtr, arg_0}
  end
  # Builtins.MkDPair
  idris_Builtins_d_MkDPair = fn ->
    {:idris_Builtins_d_MkDPair}
  end
  # Language.Reflection.Elab.MkDatatype
  idris_Language_d_Reflection_d_Elab_d_MkDatatype = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_MkDatatype}
  end
  # MkFFI
  idris_MkFFI = fn ->
    {:idris_MkFFI}
  end
  # Language.Reflection.Elab.MkFunArg
  idris_Language_d_Reflection_d_Elab_d_MkFunArg = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_MkFunArg}
  end
  # Language.Reflection.Elab.MkFunClause
  idris_Language_d_Reflection_d_Elab_d_MkFunClause = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_MkFunClause}
  end
  # MkIO
  idris_MkIO = fn arg_0 ->
    {:idris_MkIO, arg_0}
  end
  # Language.Reflection.Elab.MkImpossibleClause
  idris_Language_d_Reflection_d_Elab_d_MkImpossibleClause = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_MkImpossibleClause}
  end
  # MkJsFn
  idris_MkJsFn = fn arg_0 ->
    {:idris_MkJsFn, arg_0}
  end
  # Builtins.MkPair
  idris_Builtins_d_MkPair = fn arg_0 ->
    fn arg_1 ->
      {:idris_Builtins_d_MkPair, arg_0, arg_1}
    end
  end
  # FFI_C.MkRaw
  idris_FFI___C_d_MkRaw = fn arg_0 ->
    {:idris_FFI___C_d_MkRaw, arg_0}
  end
  # Prelude.Strings.MkString
  idris_Prelude_d_Strings_d_MkString = fn ->
    {:idris_Prelude_d_Strings_d_MkString}
  end
  # Builtins.MkUPair
  idris_Builtins_d_MkUPair = fn arg_0 ->
    fn arg_1 ->
      {:idris_Builtins_d_MkUPair, arg_0, arg_1}
    end
  end
  # MkUnit
  idris_MkUnit = fn ->
    {:idris_MkUnit}
  end
  # Prelude.File.Mode
  idris_Prelude_d_File_d_Mode = fn ->
    {:idris_Prelude_d_File_d_Mode}
  end
  # Prelude.Monad.Monad
  idris_Prelude_d_Monad_d_Monad = fn arg_0 ->
    {:idris_Prelude_d_Monad_d_Monad, arg_0}
  end
  # Prelude.Algebra.Monoid
  idris_Prelude_d_Algebra_d_Monoid = fn arg_0 ->
    {:idris_Prelude_d_Algebra_d_Monoid, arg_0}
  end
  # Language.Reflection.Errors.Msg
  idris_Language_d_Reflection_d_Errors_d_Msg = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_Msg}
  end
  # Prelude.Nat.Multiplicative
  idris_Prelude_d_Nat_d_Multiplicative = fn ->
    {:idris_Prelude_d_Nat_d_Multiplicative}
  end
  # Language.Reflection.NS
  idris_Language_d_Reflection_d_NS = fn ->
    {:idris_Language_d_Reflection_d_NS}
  end
  # Language.Reflection.NamePart
  idris_Language_d_Reflection_d_NamePart = fn ->
    {:idris_Language_d_Reflection_d_NamePart}
  end
  # Language.Reflection.NameType
  idris_Language_d_Reflection_d_NameType = fn ->
    {:idris_Language_d_Reflection_d_NameType}
  end
  # Prelude.Nat.Nat
  idris_Prelude_d_Nat_d_Nat = fn ->
    {:idris_Prelude_d_Nat_d_Nat}
  end
  # Language.Reflection.NativeTy
  idris_Language_d_Reflection_d_NativeTy = fn ->
    {:idris_Language_d_Reflection_d_NativeTy}
  end
  # Prelude.Interfaces.Neg
  idris_Prelude_d_Interfaces_d_Neg = fn arg_0 ->
    {:idris_Prelude_d_Interfaces_d_Neg, arg_0}
  end
  # ForeignEnv.Nil
  idris_ForeignEnv_d_Nil = fn ->
    {:idris_ForeignEnv_d_Nil}
  end
  # Prelude.List.Nil
  idris_Prelude_d_List_d_Nil = fn ->
    {:idris_Prelude_d_List_d_Nil}
  end
  # Prelude.Basics.No
  idris_Prelude_d_Basics_d_No = fn ->
    {:idris_Prelude_d_Basics_d_No}
  end
  # Language.Reflection.Errors.NoEliminator
  idris_Language_d_Reflection_d_Errors_d_NoEliminator = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_NoEliminator}
  end
  # Language.Reflection.Errors.NoRewriting
  idris_Language_d_Reflection_d_Errors_d_NoRewriting = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_NoRewriting}
  end
  # Language.Reflection.Errors.NoSuchVariable
  idris_Language_d_Reflection_d_Errors_d_NoSuchVariable = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_NoSuchVariable}
  end
  # Language.Reflection.Errors.NoTypeDecl
  idris_Language_d_Reflection_d_Errors_d_NoTypeDecl = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_NoTypeDecl}
  end
  # Language.Reflection.Errors.NoValidAlts
  idris_Language_d_Reflection_d_Errors_d_NoValidAlts = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_NoValidAlts}
  end
  # Language.Reflection.Errors.NonCollapsiblePostulate
  idris_Language_d_Reflection_d_Errors_d_NonCollapsiblePostulate = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_NonCollapsiblePostulate}
  end
  # Prelude.List.NonEmpty
  idris_Prelude_d_List_d_NonEmpty = fn arg_0 ->
    fn arg_1 ->
      {:idris_Prelude_d_List_d_NonEmpty, arg_0, arg_1}
    end
  end
  # Language.Reflection.Errors.NonFunctionType
  idris_Language_d_Reflection_d_Errors_d_NonFunctionType = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_NonFunctionType}
  end
  # Prelude.Nat.NotBothZero
  idris_Prelude_d_Nat_d_NotBothZero = fn arg_0 ->
    fn arg_1 ->
      {:idris_Prelude_d_Nat_d_NotBothZero, arg_0, arg_1}
    end
  end
  # Language.Reflection.Errors.NotEquality
  idris_Language_d_Reflection_d_Errors_d_NotEquality = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_NotEquality}
  end
  # Language.Reflection.Elab.NotErased
  idris_Language_d_Reflection_d_Elab_d_NotErased = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_NotErased}
  end
  # Language.Reflection.Errors.NotInjective
  idris_Language_d_Reflection_d_Errors_d_NotInjective = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_NotInjective}
  end
  # Prelude.Maybe.Nothing
  idris_Prelude_d_Maybe_d_Nothing = fn ->
    {:idris_Prelude_d_Maybe_d_Nothing}
  end
  # Language.Reflection.NullType
  idris_Language_d_Reflection_d_NullType = fn ->
    {:idris_Language_d_Reflection_d_NullType}
  end
  # Prelude.Interfaces.Num
  idris_Prelude_d_Interfaces_d_Num = fn arg_0 ->
    {:idris_Prelude_d_Interfaces_d_Num, arg_0}
  end
  # Prelude.Show.Open
  idris_Prelude_d_Show_d_Open = fn ->
    {:idris_Prelude_d_Show_d_Open}
  end
  # Prelude.Interfaces.Ord
  idris_Prelude_d_Interfaces_d_Ord = fn arg_0 ->
    {:idris_Prelude_d_Interfaces_d_Ord, arg_0}
  end
  # Prelude.Interfaces.Ordering
  idris_Prelude_d_Interfaces_d_Ordering = fn ->
    {:idris_Prelude_d_Interfaces_d_Ordering}
  end
  # Language.Reflection.P
  idris_Language_d_Reflection_d_P = fn ->
    {:idris_Language_d_Reflection_d_P}
  end
  # Language.Reflection.PVTy
  idris_Language_d_Reflection_d_PVTy = fn ->
    {:idris_Language_d_Reflection_d_PVTy}
  end
  # Language.Reflection.PVar
  idris_Language_d_Reflection_d_PVar = fn ->
    {:idris_Language_d_Reflection_d_PVar}
  end
  # Builtins.Pair
  idris_Builtins_d_Pair = fn arg_0 ->
    fn arg_1 ->
      {:idris_Builtins_d_Pair, arg_0, arg_1}
    end
  end
  # Language.Reflection.ParentN
  idris_Language_d_Reflection_d_ParentN = fn ->
    {:idris_Language_d_Reflection_d_ParentN}
  end
  # Prelude.File.PermissionDenied
  idris_Prelude_d_File_d_PermissionDenied = fn ->
    {:idris_Prelude_d_File_d_PermissionDenied}
  end
  # Language.Reflection.Pi
  idris_Language_d_Reflection_d_Pi = fn ->
    {:idris_Language_d_Reflection_d_Pi}
  end
  # Language.Reflection.Elab.Plicity
  idris_Language_d_Reflection_d_Elab_d_Plicity = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Plicity}
  end
  # Prelude.Show.Prec
  idris_Prelude_d_Show_d_Prec = fn ->
    {:idris_Prelude_d_Show_d_Prec}
  end
  # Language.Reflection.Elab.Prefix
  idris_Language_d_Reflection_d_Elab_d_Prefix = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prefix}
  end
  # Prelude.Show.PrefixMinus
  idris_Prelude_d_Show_d_PrefixMinus = fn ->
    {:idris_Prelude_d_Show_d_PrefixMinus}
  end
  # PrimIO
  idris_PrimIO = fn arg_0 ->
    {:idris_PrimIO, arg_0}
  end
  # Language.Reflection.Elab.Prim__AddImplementation
  idris_Language_d_Reflection_d_Elab_d_Prim______AddImplementation = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______AddImplementation}
  end
  # Language.Reflection.Elab.Prim__Apply
  idris_Language_d_Reflection_d_Elab_d_Prim______Apply = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Apply}
  end
  # Language.Reflection.Elab.Prim__Attack
  idris_Language_d_Reflection_d_Elab_d_Prim______Attack = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Attack}
  end
  # Language.Reflection.Elab.Prim__BindElab
  idris_Language_d_Reflection_d_Elab_d_Prim______BindElab = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______BindElab}
  end
  # Language.Reflection.Elab.Prim__Check
  idris_Language_d_Reflection_d_Elab_d_Prim______Check = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Check}
  end
  # Language.Reflection.Elab.Prim__Claim
  idris_Language_d_Reflection_d_Elab_d_Prim______Claim = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Claim}
  end
  # Language.Reflection.Elab.Prim__Compute
  idris_Language_d_Reflection_d_Elab_d_Prim______Compute = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Compute}
  end
  # Language.Reflection.Elab.Prim__Converts
  idris_Language_d_Reflection_d_Elab_d_Prim______Converts = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Converts}
  end
  # Language.Reflection.Elab.Prim__Debug
  idris_Language_d_Reflection_d_Elab_d_Prim______Debug = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Debug}
  end
  # Language.Reflection.Elab.Prim__DeclareDatatype
  idris_Language_d_Reflection_d_Elab_d_Prim______DeclareDatatype = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______DeclareDatatype}
  end
  # Language.Reflection.Elab.Prim__DeclareType
  idris_Language_d_Reflection_d_Elab_d_Prim______DeclareType = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______DeclareType}
  end
  # Language.Reflection.Elab.Prim__DefineDatatype
  idris_Language_d_Reflection_d_Elab_d_Prim______DefineDatatype = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______DefineDatatype}
  end
  # Language.Reflection.Elab.Prim__DefineFunction
  idris_Language_d_Reflection_d_Elab_d_Prim______DefineFunction = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______DefineFunction}
  end
  # Language.Reflection.Elab.Prim__Env
  idris_Language_d_Reflection_d_Elab_d_Prim______Env = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Env}
  end
  # Language.Reflection.Elab.Prim__Fail
  idris_Language_d_Reflection_d_Elab_d_Prim______Fail = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Fail}
  end
  # Language.Reflection.Elab.Prim__Fill
  idris_Language_d_Reflection_d_Elab_d_Prim______Fill = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Fill}
  end
  # Language.Reflection.Elab.Prim__Fixity
  idris_Language_d_Reflection_d_Elab_d_Prim______Fixity = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Fixity}
  end
  # Language.Reflection.Elab.Prim__Focus
  idris_Language_d_Reflection_d_Elab_d_Prim______Focus = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Focus}
  end
  # Language.Reflection.Elab.Prim__Forall
  idris_Language_d_Reflection_d_Elab_d_Prim______Forall = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Forall}
  end
  # Language.Reflection.Elab.Prim__Gensym
  idris_Language_d_Reflection_d_Elab_d_Prim______Gensym = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Gensym}
  end
  # Language.Reflection.Elab.Prim__Goal
  idris_Language_d_Reflection_d_Elab_d_Prim______Goal = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Goal}
  end
  # Language.Reflection.Elab.Prim__Guess
  idris_Language_d_Reflection_d_Elab_d_Prim______Guess = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Guess}
  end
  # Language.Reflection.Elab.Prim__Holes
  idris_Language_d_Reflection_d_Elab_d_Prim______Holes = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Holes}
  end
  # Prim__IO
  idris_Prim______IO = fn arg_0 ->
    {:idris_Prim______IO, arg_0}
  end
  # Language.Reflection.Elab.Prim__Intro
  idris_Language_d_Reflection_d_Elab_d_Prim______Intro = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Intro}
  end
  # Language.Reflection.Elab.Prim__IsTCName
  idris_Language_d_Reflection_d_Elab_d_Prim______IsTCName = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______IsTCName}
  end
  # Language.Reflection.Elab.Prim__LetBind
  idris_Language_d_Reflection_d_Elab_d_Prim______LetBind = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______LetBind}
  end
  # Language.Reflection.Elab.Prim__LookupArgs
  idris_Language_d_Reflection_d_Elab_d_Prim______LookupArgs = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______LookupArgs}
  end
  # Language.Reflection.Elab.Prim__LookupDatatype
  idris_Language_d_Reflection_d_Elab_d_Prim______LookupDatatype = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______LookupDatatype}
  end
  # Language.Reflection.Elab.Prim__LookupFunDefn
  idris_Language_d_Reflection_d_Elab_d_Prim______LookupFunDefn = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______LookupFunDefn}
  end
  # Language.Reflection.Elab.Prim__LookupTy
  idris_Language_d_Reflection_d_Elab_d_Prim______LookupTy = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______LookupTy}
  end
  # Language.Reflection.Elab.Prim__MatchApply
  idris_Language_d_Reflection_d_Elab_d_Prim______MatchApply = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______MatchApply}
  end
  # Language.Reflection.Elab.Prim__Metavar
  idris_Language_d_Reflection_d_Elab_d_Prim______Metavar = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Metavar}
  end
  # Language.Reflection.Elab.Prim__Namespace
  idris_Language_d_Reflection_d_Elab_d_Prim______Namespace = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Namespace}
  end
  # Language.Reflection.Elab.Prim__Normalise
  idris_Language_d_Reflection_d_Elab_d_Prim______Normalise = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Normalise}
  end
  # Language.Reflection.Elab.Prim__PatBind
  idris_Language_d_Reflection_d_Elab_d_Prim______PatBind = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______PatBind}
  end
  # Language.Reflection.Elab.Prim__PatVar
  idris_Language_d_Reflection_d_Elab_d_Prim______PatVar = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______PatVar}
  end
  # Language.Reflection.Elab.Prim__PureElab
  idris_Language_d_Reflection_d_Elab_d_Prim______PureElab = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______PureElab}
  end
  # Language.Reflection.Elab.Prim__RecursiveElab
  idris_Language_d_Reflection_d_Elab_d_Prim______RecursiveElab = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______RecursiveElab}
  end
  # Language.Reflection.Elab.Prim__ResolveTC
  idris_Language_d_Reflection_d_Elab_d_Prim______ResolveTC = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______ResolveTC}
  end
  # Language.Reflection.Elab.Prim__Rewrite
  idris_Language_d_Reflection_d_Elab_d_Prim______Rewrite = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Rewrite}
  end
  # Language.Reflection.Elab.Prim__Search
  idris_Language_d_Reflection_d_Elab_d_Prim______Search = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Search}
  end
  # Language.Reflection.Elab.Prim__Solve
  idris_Language_d_Reflection_d_Elab_d_Prim______Solve = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Solve}
  end
  # Language.Reflection.Elab.Prim__SourceLocation
  idris_Language_d_Reflection_d_Elab_d_Prim______SourceLocation = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______SourceLocation}
  end
  # Language.Reflection.Elab.Prim__Try
  idris_Language_d_Reflection_d_Elab_d_Prim______Try = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Try}
  end
  # Language.Reflection.Elab.Prim__Unfocus
  idris_Language_d_Reflection_d_Elab_d_Prim______Unfocus = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Unfocus}
  end
  # Language.Reflection.Elab.Prim__Whnf
  idris_Language_d_Reflection_d_Elab_d_Prim______Whnf = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_Prim______Whnf}
  end
  # Language.Reflection.Errors.ProgramLineComment
  idris_Language_d_Reflection_d_Errors_d_ProgramLineComment = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_ProgramLineComment}
  end
  # Language.Reflection.Errors.ProofSearchFail
  idris_Language_d_Reflection_d_Errors_d_ProofSearchFail = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_ProofSearchFail}
  end
  # Prelude.Providers.Provide
  idris_Prelude_d_Providers_d_Provide = fn ->
    {:idris_Prelude_d_Providers_d_Provide}
  end
  # Prelude.Providers.Provider
  idris_Prelude_d_Providers_d_Provider = fn arg_0 ->
    {:idris_Prelude_d_Providers_d_Provider, arg_0}
  end
  # Language.Reflection.Errors.ProviderError
  idris_Language_d_Reflection_d_Errors_d_ProviderError = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_ProviderError}
  end
  # Ptr
  idris_Ptr = fn ->
    {:idris_Ptr}
  end
  # Language.Reflection.Quotable
  idris_Language_d_Reflection_d_Quotable = fn arg_0 ->
    fn arg_1 ->
      {:idris_Language_d_Reflection_d_Quotable, arg_0, arg_1}
    end
  end
  # Language.Reflection.RApp
  idris_Language_d_Reflection_d_RApp = fn ->
    {:idris_Language_d_Reflection_d_RApp}
  end
  # Language.Reflection.RBind
  idris_Language_d_Reflection_d_RBind = fn ->
    {:idris_Language_d_Reflection_d_RBind}
  end
  # Language.Reflection.RConstant
  idris_Language_d_Reflection_d_RConstant = fn ->
    {:idris_Language_d_Reflection_d_RConstant}
  end
  # Language.Reflection.RType
  idris_Language_d_Reflection_d_RType = fn ->
    {:idris_Language_d_Reflection_d_RType}
  end
  # Language.Reflection.RUType
  idris_Language_d_Reflection_d_RUType = fn ->
    {:idris_Language_d_Reflection_d_RUType}
  end
  # FFI_C.Raw
  idris_FFI___C_d_Raw = fn arg_0 ->
    {:idris_FFI___C_d_Raw, arg_0}
  end
  # Language.Reflection.Raw
  idris_Language_d_Reflection_d_Raw = fn ->
    {:idris_Language_d_Reflection_d_Raw}
  end
  # Language.Reflection.RawPart
  idris_Language_d_Reflection_d_RawPart = fn ->
    {:idris_Language_d_Reflection_d_RawPart}
  end
  # Prelude.File.Read
  idris_Prelude_d_File_d_Read = fn ->
    {:idris_Prelude_d_File_d_Read}
  end
  # Ownership.Read
  idris_Ownership_d_Read = fn ->
    {:idris_Ownership_d_Read}
  end
  # Prelude.File.ReadAppend
  idris_Prelude_d_File_d_ReadAppend = fn ->
    {:idris_Prelude_d_File_d_ReadAppend}
  end
  # Prelude.File.ReadWrite
  idris_Prelude_d_File_d_ReadWrite = fn ->
    {:idris_Prelude_d_File_d_ReadWrite}
  end
  # Prelude.File.ReadWriteTruncate
  idris_Prelude_d_File_d_ReadWriteTruncate = fn ->
    {:idris_Prelude_d_File_d_ReadWriteTruncate}
  end
  # Language.Reflection.Ref
  idris_Language_d_Reflection_d_Ref = fn ->
    {:idris_Language_d_Reflection_d_Ref}
  end
  # Language.Reflection.Refine
  idris_Language_d_Reflection_d_Refine = fn ->
    {:idris_Language_d_Reflection_d_Refine}
  end
  # Refl
  idris_Refl = fn ->
    {:idris_Refl}
  end
  # Language.Reflection.ReflConst
  idris_Language_d_Reflection_d_ReflConst = fn arg_0 ->
    {:idris_Language_d_Reflection_d_ReflConst, arg_0}
  end
  # Language.Reflection.Reflect
  idris_Language_d_Reflection_d_Reflect = fn ->
    {:idris_Language_d_Reflection_d_Reflect}
  end
  # Language.Reflection.Rewrite
  idris_Language_d_Reflection_d_Rewrite = fn ->
    {:idris_Language_d_Reflection_d_Rewrite}
  end
  # Prelude.Either.Right
  idris_Prelude_d_Either_d_Right = fn arg_0 ->
    {:idris_Prelude_d_Either_d_Right, arg_0}
  end
  # Prelude.Nat.RightIsNotZero
  idris_Prelude_d_Nat_d_RightIsNotZero = fn ->
    {:idris_Prelude_d_Nat_d_RightIsNotZero}
  end
  # Prelude.Nat.S
  idris_Prelude_d_Nat_d_S = fn ->
    {:idris_Prelude_d_Nat_d_S}
  end
  # Language.Reflection.SN
  idris_Language_d_Reflection_d_SN = fn ->
    {:idris_Language_d_Reflection_d_SN}
  end
  # Language.Reflection.Search
  idris_Language_d_Reflection_d_Search = fn ->
    {:idris_Language_d_Reflection_d_Search}
  end
  # Prelude.Algebra.Semigroup
  idris_Prelude_d_Algebra_d_Semigroup = fn arg_0 ->
    {:idris_Prelude_d_Algebra_d_Semigroup, arg_0}
  end
  # Language.Reflection.Seq
  idris_Language_d_Reflection_d_Seq = fn ->
    {:idris_Language_d_Reflection_d_Seq}
  end
  # Prelude.Show.Show
  idris_Prelude_d_Show_d_Show = fn arg_0 ->
    {:idris_Prelude_d_Show_d_Show, arg_0}
  end
  # Prelude.WellFounded.Sized
  idris_Prelude_d_WellFounded_d_Sized = fn arg_0 ->
    {:idris_Prelude_d_WellFounded_d_Sized, arg_0}
  end
  # Language.Reflection.Skip
  idris_Language_d_Reflection_d_Skip = fn ->
    {:idris_Language_d_Reflection_d_Skip}
  end
  # Language.Reflection.Solve
  idris_Language_d_Reflection_d_Solve = fn ->
    {:idris_Language_d_Reflection_d_Solve}
  end
  # Language.Reflection.SourceFC
  idris_Language_d_Reflection_d_SourceFC = fn ->
    {:idris_Language_d_Reflection_d_SourceFC}
  end
  # Language.Reflection.SourceLocation
  idris_Language_d_Reflection_d_SourceLocation = fn ->
    {:idris_Language_d_Reflection_d_SourceLocation}
  end
  # Language.Reflection.SpecialName
  idris_Language_d_Reflection_d_SpecialName = fn ->
    {:idris_Language_d_Reflection_d_SpecialName}
  end
  # Language.Reflection.Str
  idris_Language_d_Reflection_d_Str = fn ->
    {:idris_Language_d_Reflection_d_Str}
  end
  # Prelude.Strings.StrCons
  idris_Prelude_d_Strings_d_StrCons = fn arg_0 ->
    {:idris_Prelude_d_Strings_d_StrCons, arg_0}
  end
  # Prelude.Strings.StrM
  idris_Prelude_d_Strings_d_StrM = fn arg_0 ->
    {:idris_Prelude_d_Strings_d_StrM, arg_0}
  end
  # Prelude.Strings.StrNil
  idris_Prelude_d_Strings_d_StrNil = fn ->
    {:idris_Prelude_d_Strings_d_StrNil}
  end
  # Language.Reflection.StrType
  idris_Language_d_Reflection_d_StrType = fn ->
    {:idris_Language_d_Reflection_d_StrType}
  end
  # Prelude.Stream.Stream
  idris_Prelude_d_Stream_d_Stream = fn arg_0 ->
    {:idris_Prelude_d_Stream_d_Stream, arg_0}
  end
  # Prelude.Strings.StringBuffer
  idris_Prelude_d_Strings_d_StringBuffer = fn ->
    {:idris_Prelude_d_Strings_d_StringBuffer}
  end
  # Language.Reflection.SubReport
  idris_Language_d_Reflection_d_SubReport = fn ->
    {:idris_Language_d_Reflection_d_SubReport}
  end
  # Prelude.Pairs.Subset
  idris_Prelude_d_Pairs_d_Subset = fn arg_0 ->
    fn arg_1 ->
      {:idris_Prelude_d_Pairs_d_Subset, arg_0, arg_1}
    end
  end
  # Symbol_
  idris_Symbol___ = fn arg_0 ->
    {:idris_Symbol___, arg_0}
  end
  # Language.Reflection.TCon
  idris_Language_d_Reflection_d_TCon = fn ->
    {:idris_Language_d_Reflection_d_TCon}
  end
  # Language.Reflection.TConst
  idris_Language_d_Reflection_d_TConst = fn ->
    {:idris_Language_d_Reflection_d_TConst}
  end
  # Language.Reflection.TT
  idris_Language_d_Reflection_d_TT = fn ->
    {:idris_Language_d_Reflection_d_TT}
  end
  # Language.Reflection.TTName
  idris_Language_d_Reflection_d_TTName = fn ->
    {:idris_Language_d_Reflection_d_TTName}
  end
  # Language.Reflection.TTUExp
  idris_Language_d_Reflection_d_TTUExp = fn ->
    {:idris_Language_d_Reflection_d_TTUExp}
  end
  # Language.Reflection.TType
  idris_Language_d_Reflection_d_TType = fn ->
    {:idris_Language_d_Reflection_d_TType}
  end
  # Language.Reflection.Tactic
  idris_Language_d_Reflection_d_Tactic = fn ->
    {:idris_Language_d_Reflection_d_Tactic}
  end
  # Language.Reflection.TermPart
  idris_Language_d_Reflection_d_TermPart = fn ->
    {:idris_Language_d_Reflection_d_TermPart}
  end
  # Language.Reflection.TextPart
  idris_Language_d_Reflection_d_TextPart = fn ->
    {:idris_Language_d_Reflection_d_TextPart}
  end
  # TheWorld
  idris_TheWorld = fn arg_0 ->
    {:idris_TheWorld, arg_0}
  end
  # Language.Reflection.TheWorld
  idris_Language_d_Reflection_d_TheWorld = fn ->
    {:idris_Language_d_Reflection_d_TheWorld}
  end
  # Language.Reflection.Errors.TooManyArguments
  idris_Language_d_Reflection_d_Errors_d_TooManyArguments = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_TooManyArguments}
  end
  # Prelude.Traversable.Traversable
  idris_Prelude_d_Traversable_d_Traversable = fn arg_0 ->
    {:idris_Prelude_d_Traversable_d_Traversable, arg_0}
  end
  # Language.Reflection.Trivial
  idris_Language_d_Reflection_d_Trivial = fn ->
    {:idris_Language_d_Reflection_d_Trivial}
  end
  # Prelude.Bool.True
  idris_Prelude_d_Bool_d_True = fn ->
    {:idris_Prelude_d_Bool_d_True}
  end
  # Language.Reflection.Try
  idris_Language_d_Reflection_d_Try = fn ->
    {:idris_Language_d_Reflection_d_Try}
  end
  # Language.Reflection.Elab.TyConArg
  idris_Language_d_Reflection_d_Elab_d_TyConArg = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_TyConArg}
  end
  # Language.Reflection.Elab.TyConIndex
  idris_Language_d_Reflection_d_Elab_d_TyConIndex = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_TyConIndex}
  end
  # Language.Reflection.Elab.TyConParameter
  idris_Language_d_Reflection_d_Elab_d_TyConParameter = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_TyConParameter}
  end
  # Language.Reflection.Elab.TyDecl
  idris_Language_d_Reflection_d_Elab_d_TyDecl = fn ->
    {:idris_Language_d_Reflection_d_Elab_d_TyDecl}
  end
  # Language.Reflection.UN
  idris_Language_d_Reflection_d_UN = fn ->
    {:idris_Language_d_Reflection_d_UN}
  end
  # Builtins.UPair
  idris_Builtins_d_UPair = fn arg_0 ->
    fn arg_1 ->
      {:idris_Builtins_d_UPair, arg_0, arg_1}
    end
  end
  # Language.Reflection.UType
  idris_Language_d_Reflection_d_UType = fn ->
    {:idris_Language_d_Reflection_d_UType}
  end
  # Language.Reflection.UVal
  idris_Language_d_Reflection_d_UVal = fn ->
    {:idris_Language_d_Reflection_d_UVal}
  end
  # Language.Reflection.UVar
  idris_Language_d_Reflection_d_UVar = fn ->
    {:idris_Language_d_Reflection_d_UVar}
  end
  # Language.Reflection.Unfocus
  idris_Language_d_Reflection_d_Unfocus = fn ->
    {:idris_Language_d_Reflection_d_Unfocus}
  end
  # Language.Reflection.Errors.UnifyScope
  idris_Language_d_Reflection_d_Errors_d_UnifyScope = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_UnifyScope}
  end
  # Prelude.Uninhabited.Uninhabited
  idris_Prelude_d_Uninhabited_d_Uninhabited = fn arg_0 ->
    {:idris_Prelude_d_Uninhabited_d_Uninhabited, arg_0}
  end
  # Language.Reflection.UniqueType
  idris_Language_d_Reflection_d_UniqueType = fn ->
    {:idris_Language_d_Reflection_d_UniqueType}
  end
  # Unit
  idris_Unit = fn ->
    {:idris_Unit}
  end
  # Language.Reflection.Universe
  idris_Language_d_Reflection_d_Universe = fn ->
    {:idris_Language_d_Reflection_d_Universe}
  end
  # Language.Reflection.Errors.UniverseError
  idris_Language_d_Reflection_d_Errors_d_UniverseError = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_UniverseError}
  end
  # Language.Reflection.Errors.UnknownImplicit
  idris_Language_d_Reflection_d_Errors_d_UnknownImplicit = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_UnknownImplicit}
  end
  # Prelude.Show.User
  idris_Prelude_d_Show_d_User = fn arg_0 ->
    {:idris_Prelude_d_Show_d_User, arg_0}
  end
  # Language.Reflection.V
  idris_Language_d_Reflection_d_V = fn ->
    {:idris_Language_d_Reflection_d_V}
  end
  # Language.Reflection.Var
  idris_Language_d_Reflection_d_Var = fn ->
    {:idris_Language_d_Reflection_d_Var}
  end
  # Void
  idris_Void = fn ->
    {:idris_Void}
  end
  # Language.Reflection.VoidType
  idris_Language_d_Reflection_d_VoidType = fn ->
    {:idris_Language_d_Reflection_d_VoidType}
  end
  # Prelude.WellFounded.WellFounded
  idris_Prelude_d_WellFounded_d_WellFounded = fn arg_0 ->
    fn arg_1 ->
      {:idris_Prelude_d_WellFounded_d_WellFounded, arg_0, arg_1}
    end
  end
  # Language.Reflection.WhereN
  idris_Language_d_Reflection_d_WhereN = fn ->
    {:idris_Language_d_Reflection_d_WhereN}
  end
  # Language.Reflection.Errors.WithFnType
  idris_Language_d_Reflection_d_Errors_d_WithFnType = fn ->
    {:idris_Language_d_Reflection_d_Errors_d_WithFnType}
  end
  # Language.Reflection.WithN
  idris_Language_d_Reflection_d_WithN = fn ->
    {:idris_Language_d_Reflection_d_WithN}
  end
  # World
  idris_World = fn ->
    {:idris_World}
  end
  # Language.Reflection.WorldType
  idris_Language_d_Reflection_d_WorldType = fn ->
    {:idris_Language_d_Reflection_d_WorldType}
  end
  # Prelude.File.WriteTruncate
  idris_Prelude_d_File_d_WriteTruncate = fn ->
    {:idris_Prelude_d_File_d_WriteTruncate}
  end
  # Prelude.Basics.Yes
  idris_Prelude_d_Basics_d_Yes = fn ->
    {:idris_Prelude_d_Basics_d_Yes}
  end
  # Prelude.Nat.Z
  idris_Prelude_d_Nat_d_Z = fn ->
    {:idris_Prelude_d_Nat_d_Z}
  end
  # assert_unreachable
  idris_assert___unreachable = fn ->
    :idris_nothing
  end
  # call__IO
  idris_call______IO = fn e0 ->
    fn e1 ->
      fn e2 ->
        e2.( :idris_nothing )
      end
    end
  end
  # Main.fifi
  idris_Main_d_fifi = fn e0 ->
    aux1 = e0
    aux2 = case aux1 do
      "x" ->
        idris_Main_d__lc_fifi___0_rc_
      _ ->
        idris_Main_d__lc_fifi___1_rc_
    end
    aux2
  end
  # Main.{fifi_1}
  idris_Main_d__lc_fifi___1_rc_ = fn in1 ->
    {:idris_Main_d_FooFoo, 4, in1}
  end
  # Main.{fifi_0}
  idris_Main_d__lc_fifi___0_rc_ = fn in0 ->
    {:idris_Main_d_FooFoo, 3, in0}
  end
  # Main.flamflam
  idris_Main_d_flamflam = fn e0 ->
    fn e1 ->
      :idris_error + e1
    end
  end
  # Prelude.Foldable.foldr
  idris_Prelude_d_Foldable_d_foldr = fn e0 ->
    fn e1 ->
      fn e2 ->
        fn e3 ->
          e1.( e2 ).( e3 )
        end
      end
    end
  end
  # Prelude.Interfaces.fromInteger
  idris_Prelude_d_Interfaces_d_fromInteger = fn e0 ->
    fn e1 ->
      aux1 = e1
      aux2 = case aux1 do
        {:idris_constructor_s_of_s_Prelude_d_Interfaces_d_Num, in0, in1} ->
          in1
      end
      aux2
    end
  end
  # Main.funfun
  idris_Main_d_funfun = fn e0 ->
    aux1 = e0
    aux2 = case aux1 do
      {:idris_Main_d_FooBar, in0, in1} ->
        {:idris_Main_d_FooBar, in0 + in0, idris_Main_d_funfun.( in1 )}
      {:idris_Main_d_FooFoo, in2, in3} ->
        {:idris_Main_d_FooFoo, in2 + in2, in3}
    end
    aux2
  end
  # idris_crash
  idris_idris___crash = fn ->
    :idris_nothing
  end
  # Prelude.Bool.ifThenElse
  idris_Prelude_d_Bool_d_ifThenElse = fn e0 ->
    fn e1 ->
      fn e2 ->
        fn e3 ->
          aux1 = e1
          aux2 = case aux1 do
            {:idris_Prelude_d_Bool_d_False} ->
              IdrisRts.force(e3)
            {:idris_Prelude_d_Bool_d_True} ->
              IdrisRts.force(e2)
          end
          aux2
        end
      end
    end
  end
  # Prelude.Interfaces.intToBool
  idris_Prelude_d_Interfaces_d_intToBool = fn e0 ->
    aux1 = e0
    aux2 = case aux1 do
      0 ->
        {:idris_Prelude_d_Bool_d_False}
      _ ->
        {:idris_Prelude_d_Bool_d_True}
    end
    aux2
  end
  # io_bind
  idris_io___bind = fn e0 ->
    fn e1 ->
      fn e2 ->
        fn e3 ->
          fn e4 ->
            fn idris_w ->
              io_bind2.( e0 ).( e1 ).( e2 ).( e3 ).( e4 ).( idris_w ).( e3.( idris_w ) )
            end
          end
        end
      end
    end
  end
  # {io_bind_2}
  io_bind2 = fn e0 ->
    fn e1 ->
      fn e2 ->
        fn e3 ->
          fn e4 ->
            fn idris_w ->
              io_bind1.( e0 ).( e1 ).( e2 ).( e3 ).( e4 ).( idris_w )
            end
          end
        end
      end
    end
  end
  # {io_bind_1}
  io_bind1 = fn e0 ->
    fn e1 ->
      fn e2 ->
        fn e3 ->
          fn e4 ->
            fn idris_w ->
              fn in0 ->
                io_bind0.( e0 ).( e1 ).( e2 ).( e3 ).( e4 ).( idris_w ).( in0 ).( idris_w )
              end
            end
          end
        end
      end
    end
  end
  # {io_bind_0}
  io_bind0 = fn e0 ->
    fn e1 ->
      fn e2 ->
        fn e3 ->
          fn e4 ->
            fn idris_w ->
              fn in0 ->
                e4.( in0 )
              end
            end
          end
        end
      end
    end
  end
  # io_pure
  idris_io___pure = fn e0 ->
    fn e1 ->
      fn e2 ->
        fn idris_w ->
          e2
        end
      end
    end
  end
  # Main.kiki
  idris_Main_d_kiki = fn e0 ->
    idris_Prelude_d_Foldable_d_sum.( :idris_nothing ).( :idris_nothing ).( idris_Main_d__lc_kiki___4_rc_ ).( {:idris_constructor_s_of_s_Prelude_d_Interfaces_d_Num, idris_Main_d__lc_kiki___6_rc_, idris_Main_d__lc_kiki___7_rc_} ).( idris_Prelude_d_Functor_d_Prelude_d_List_d_List_s_implementation_s_of_s_Prelude_d_Functor_d_Functor_c__s_method_s_map.( :idris_nothing ).( :idris_nothing ).( idris_Main_d_flamflam.( 2 ) ).( idris_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo.( 1 ).( e0 ) ) )
  end
  # Main.{kiki_7}
  idris_Main_d__lc_kiki___7_rc_ = fn in7 ->
    :idris_error
  end
  # Main.{kiki_6}
  idris_Main_d__lc_kiki___6_rc_ = fn in5 ->
    idris_Main_d__lc_kiki___5_rc_.( in5 )
  end
  # Main.{kiki_5}
  idris_Main_d__lc_kiki___5_rc_ = fn in5 ->
    fn in6 ->
      in5 + in6
    end
  end
  # Main.{kiki_4}
  idris_Main_d__lc_kiki___4_rc_ = fn in0 ->
    idris_Main_d__lc_kiki___3_rc_
  end
  # Main.{kiki_3}
  idris_Main_d__lc_kiki___3_rc_ = fn in1 ->
    idris_Main_d__lc_kiki___2_rc_
  end
  # Main.{kiki_2}
  idris_Main_d__lc_kiki___2_rc_ = fn in2 ->
    idris_Main_d__lc_kiki___1_rc_.( in2 )
  end
  # Main.{kiki_1}
  idris_Main_d__lc_kiki___1_rc_ = fn in2 ->
    fn in3 ->
      idris_Main_d__lc_kiki___0_rc_.( in2 ).( in3 )
    end
  end
  # Main.{kiki_0}
  idris_Main_d__lc_kiki___0_rc_ = fn in2 ->
    fn in3 ->
      fn in4 ->
        idris_Prelude_d_Foldable_d_Prelude_d_List_d_List_s_implementation_s_of_s_Prelude_d_Foldable_d_Foldable_c__s_method_s_foldr.( :idris_nothing ).( :idris_nothing ).( in2 ).( in3 ).( in4 )
      end
    end
  end
  # Main.main
  idris_Main_d_main = fn ->
    idris_io___bind.( :idris_nothing ).( :idris_nothing ).( :idris_nothing ).( idris_Prelude_d_Interactive_d_putStr_prime_.( :idris_nothing ).( idris_Main_d_show.( idris_Main_d_funfun.( {:idris_Main_d_FooBar, 2, {:idris_Main_d_FooFoo, 3, "yoyoyo"}} ) ) <> "\n" ) ).( idris_Main_d__lc_main___1_rc_ )
  end
  # Main.{main_1}
  idris_Main_d__lc_main___1_rc_ = fn in0 ->
    idris_io___bind.( :idris_nothing ).( :idris_nothing ).( :idris_nothing ).( idris_Prelude_d_Interactive_d_putStr_prime_.( :idris_nothing ).( idris_Prelude_d_Show_d_primNumShow.( :idris_nothing ).( idris_prim______toStrInt ).( {:idris_Prelude_d_Show_d_Open} ).( idris_Main_d_kiki.( 5 ) ) <> "\n" ) ).( idris_Main_d__lc_main___0_rc_ )
  end
  # Main.{main_0}
  idris_Main_d__lc_main___0_rc_ = fn in1 ->
    idris_Prelude_d_Interactive_d_putStr_prime_.( :idris_nothing ).( idris_Main_d_show.( idris_Main_d_fifi.( "y" ).( "yolo" ) ) <> "\n" )
  end
  # mkForeignPrim
  idris_mkForeignPrim = fn ->
    :idris_nothing
  end
  # Prelude.Bool.not
  idris_Prelude_d_Bool_d_not = fn e0 ->
    aux1 = e0
    aux2 = case aux1 do
      {:idris_Prelude_d_Bool_d_False} ->
        {:idris_Prelude_d_Bool_d_True}
      {:idris_Prelude_d_Bool_d_True} ->
        {:idris_Prelude_d_Bool_d_False}
    end
    aux2
  end
  # Prelude.Show.precCon
  idris_Prelude_d_Show_d_precCon = fn e0 ->
    aux1 = e0
    aux2 = case aux1 do
      {:idris_Prelude_d_Show_d_App} ->
        6
      {:idris_Prelude_d_Show_d_Backtick} ->
        3
      {:idris_Prelude_d_Show_d_Dollar} ->
        2
      {:idris_Prelude_d_Show_d_Eq} ->
        1
      {:idris_Prelude_d_Show_d_Open} ->
        0
      {:idris_Prelude_d_Show_d_PrefixMinus} ->
        5
      {:idris_Prelude_d_Show_d_User, in0} ->
        4
    end
    aux2
  end
  # Prelude.Show.primNumShow
  idris_Prelude_d_Show_d_primNumShow = fn e0 ->
    fn e1 ->
      fn e2 ->
        fn e3 ->
          in0 = e1.( e3 )
          aux2 = idris_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__gt__eq_.( e2 ).( {:idris_Prelude_d_Show_d_PrefixMinus} )
          aux3 = case aux2 do
            {:idris_Prelude_d_Bool_d_False} ->
              {:idris_Prelude_d_Bool_d_False}
            {:idris_Prelude_d_Bool_d_True} ->
              IdrisRts.force({:idris_lazy, fn() ->
                idris_Prelude_d_Show_d__lc_primNumShow___2_rc_.( in0 ).( e0 ).( e1 ).( e2 ).( e3 )
              end})
          end
          aux1 = aux3
          aux4 = case aux1 do
            {:idris_Prelude_d_Bool_d_False} ->
              in0
            {:idris_Prelude_d_Bool_d_True} ->
              "(" <> in0 <> ")"
          end
          aux4
        end
      end
    end
  end
  # Prelude.Show.{primNumShow_2}
  idris_Prelude_d_Show_d__lc_primNumShow___2_rc_ = fn in0 ->
    fn e0 ->
      fn e1 ->
        fn e2 ->
          fn e3 ->
            aux1 = idris_Prelude_d_Strings_d_strM.( in0 )
            aux2 = case aux1 do
              {:idris_Prelude_d_Strings_d_StrCons, in2} ->
                idris_Prelude_d_Show_d__lc_primNumShow___1_rc_.( e0 ).( e1 ).( e2 ).( e3 ).( in0 ).( in2 ).( in2 )
              {:idris_Prelude_d_Strings_d_StrNil} ->
                {:idris_Prelude_d_Bool_d_False}
            end
            aux2
          end
        end
      end
    end
  end
  # Prelude.Show.{primNumShow_1}
  idris_Prelude_d_Show_d__lc_primNumShow___1_rc_ = fn e0 ->
    fn e1 ->
      fn e2 ->
        fn e3 ->
          fn in0 ->
            fn in2 ->
              idris_Prelude_d_Show_d__lc_primNumShow___0_rc_
            end
          end
        end
      end
    end
  end
  # Prelude.Show.{primNumShow_0}
  idris_Prelude_d_Show_d__lc_primNumShow___0_rc_ = fn in1 ->
    aux1 = in1 == '-'
    aux2 = case aux1 do
      0 ->
        {:idris_Prelude_d_Bool_d_False}
      _ ->
        {:idris_Prelude_d_Bool_d_True}
    end
    aux2
  end
  # prim__addInt
  idris_prim______addInt = fn op0 ->
    fn op1 ->
      op0 + op1
    end
  end
  # prim__asPtr
  idris_prim______asPtr = fn op0 ->
    op0
  end
  # prim__concat
  idris_prim______concat = fn op0 ->
    fn op1 ->
      op0 <> op1
    end
  end
  # prim__eqBigInt
  idris_prim______eqBigInt = fn op0 ->
    fn op1 ->
      op0 == op1
    end
  end
  # prim__eqChar
  idris_prim______eqChar = fn op0 ->
    fn op1 ->
      op0 == op1
    end
  end
  # prim__eqInt
  idris_prim______eqInt = fn op0 ->
    fn op1 ->
      op0 == op1
    end
  end
  # prim__eqManagedPtr
  idris_prim______eqManagedPtr = fn op0 ->
    fn op1 ->
      :idris_error
    end
  end
  # prim__eqPtr
  idris_prim______eqPtr = fn op0 ->
    fn op1 ->
      :idris_error
    end
  end
  # prim__eqString
  idris_prim______eqString = fn op0 ->
    fn op1 ->
      op0 == op1
    end
  end
  # prim__mulInt
  idris_prim______mulInt = fn op0 ->
    fn op1 ->
      :idris_error
    end
  end
  # prim__null
  idris_prim______null = fn ->
    :idris_error
  end
  # prim__peek16
  idris_prim______peek16 = fn op0 ->
    fn op1 ->
      fn op2 ->
        :idris_error
      end
    end
  end
  # prim__peek32
  idris_prim______peek32 = fn op0 ->
    fn op1 ->
      fn op2 ->
        :idris_error
      end
    end
  end
  # prim__peek64
  idris_prim______peek64 = fn op0 ->
    fn op1 ->
      fn op2 ->
        :idris_error
      end
    end
  end
  # prim__peek8
  idris_prim______peek8 = fn op0 ->
    fn op1 ->
      fn op2 ->
        :idris_error
      end
    end
  end
  # prim__peekDouble
  idris_prim______peekDouble = fn op0 ->
    fn op1 ->
      fn op2 ->
        :idris_error
      end
    end
  end
  # prim__peekPtr
  idris_prim______peekPtr = fn op0 ->
    fn op1 ->
      fn op2 ->
        :idris_error
      end
    end
  end
  # prim__peekSingle
  idris_prim______peekSingle = fn op0 ->
    fn op1 ->
      fn op2 ->
        :idris_error
      end
    end
  end
  # prim__poke16
  idris_prim______poke16 = fn op0 ->
    fn op1 ->
      fn op2 ->
        fn op3 ->
          :idris_error
        end
      end
    end
  end
  # prim__poke32
  idris_prim______poke32 = fn op0 ->
    fn op1 ->
      fn op2 ->
        fn op3 ->
          :idris_error
        end
      end
    end
  end
  # prim__poke64
  idris_prim______poke64 = fn op0 ->
    fn op1 ->
      fn op2 ->
        fn op3 ->
          :idris_error
        end
      end
    end
  end
  # prim__poke8
  idris_prim______poke8 = fn op0 ->
    fn op1 ->
      fn op2 ->
        fn op3 ->
          :idris_error
        end
      end
    end
  end
  # prim__pokeDouble
  idris_prim______pokeDouble = fn op0 ->
    fn op1 ->
      fn op2 ->
        fn op3 ->
          :idris_error
        end
      end
    end
  end
  # prim__pokePtr
  idris_prim______pokePtr = fn op0 ->
    fn op1 ->
      fn op2 ->
        fn op3 ->
          :idris_error
        end
      end
    end
  end
  # prim__pokeSingle
  idris_prim______pokeSingle = fn op0 ->
    fn op1 ->
      fn op2 ->
        fn op3 ->
          :idris_error
        end
      end
    end
  end
  # prim__ptrOffset
  idris_prim______ptrOffset = fn op0 ->
    fn op1 ->
      :idris_error
    end
  end
  # prim__readChars
  idris_prim______readChars = fn op0 ->
    fn op1 ->
      fn op2 ->
        :idris_error
      end
    end
  end
  # prim__readFile
  idris_prim______readFile = fn op0 ->
    fn op1 ->
      :idris_error
    end
  end
  # prim__registerPtr
  idris_prim______registerPtr = fn op0 ->
    fn op1 ->
      :idris_error
    end
  end
  # prim__sextInt_BigInt
  idris_prim______sextInt___BigInt = fn op0 ->
    :idris_error
  end
  # prim__sizeofPtr
  idris_prim______sizeofPtr = fn ->
    :idris_error
  end
  # prim__sltBigInt
  idris_prim______sltBigInt = fn op0 ->
    fn op1 ->
      :idris_error
    end
  end
  # prim__sltInt
  idris_prim______sltInt = fn op0 ->
    fn op1 ->
      :idris_error
    end
  end
  # prim__stderr
  idris_prim______stderr = fn ->
    :idris_error
  end
  # prim__stdin
  idris_prim______stdin = fn ->
    :idris_error
  end
  # prim__stdout
  idris_prim______stdout = fn ->
    :idris_error
  end
  # prim__strHead
  idris_prim______strHead = fn op0 ->
    :idris_error
  end
  # prim__subInt
  idris_prim______subInt = fn op0 ->
    fn op1 ->
      :idris_error
    end
  end
  # prim__toStrInt
  idris_prim______toStrInt = fn op0 ->
    :idris_error
  end
  # prim__truncBigInt_Int
  idris_prim______truncBigInt___Int = fn op0 ->
    :idris_error
  end
  # prim__vm
  idris_prim______vm = fn op0 ->
    op0
  end
  # prim__writeFile
  idris_prim______writeFile = fn op0 ->
    fn op1 ->
      fn op2 ->
        :idris_error
      end
    end
  end
  # prim__writeString
  idris_prim______writeString = fn op0 ->
    fn op1 ->
      :idris_error
    end
  end
  # prim_io_bind
  idris_prim___io___bind = fn e0 ->
    fn e1 ->
      fn e2 ->
        fn e3 ->
          e3.( e2 )
        end
      end
    end
  end
  # prim_write
  idris_prim___write = fn e0 ->
    fn e1 ->
      fn idris_w ->
        :idris_error
      end
    end
  end
  # Prelude.Interactive.putStr'
  idris_Prelude_d_Interactive_d_putStr_prime_ = fn e0 ->
    fn e1 ->
      idris_io___bind.( :idris_nothing ).( :idris_nothing ).( :idris_nothing ).( idris_prim___write.( :idris_nothing ).( e1 ) ).( idris_Prelude_d_Interactive_d__lc_putStr_prime____0_rc_ )
    end
  end
  # Prelude.Interactive.{putStr'_0}
  idris_Prelude_d_Interactive_d__lc_putStr_prime____0_rc_ = fn in0 ->
    idris_io___pure.( :idris_nothing ).( :idris_nothing ).( {:idris_MkUnit} )
  end
  # run__IO
  idris_run______IO = fn e0 ->
    fn e1 ->
      e1.( :idris_nothing )
    end
  end
  # Main.show
  idris_Main_d_show = fn e0 ->
    aux1 = e0
    aux2 = case aux1 do
      {:idris_Main_d_FooBar, in0, in1} ->
        "FOOBAR: " <> idris_Prelude_d_Show_d_primNumShow.( :idris_nothing ).( idris_prim______toStrInt ).( {:idris_Prelude_d_Show_d_Open} ).( in0 ) <> " - " <> idris_Main_d_show.( in1 )
      {:idris_Main_d_FooFoo, in2, in3} ->
        "FOOFOO: " <> idris_Prelude_d_Show_d_primNumShow.( :idris_nothing ).( idris_prim______toStrInt ).( {:idris_Prelude_d_Show_d_Open} ).( in2 ) <> " - " <> in3
    end
    aux2
  end
  # Prelude.Show.showParens
  idris_Prelude_d_Show_d_showParens = fn e0 ->
    fn e1 ->
      aux1 = e0
      aux2 = case aux1 do
        {:idris_Prelude_d_Bool_d_False} ->
          e1
        {:idris_Prelude_d_Bool_d_True} ->
          "(" <> e1 <> ")"
      end
      aux2
    end
  end
  # Prelude.Strings.strM
  idris_Prelude_d_Strings_d_strM = fn e0 ->
    aux3 = e0 == ""
    aux4 = case aux3 do
      0 ->
        {:idris_Prelude_d_Bool_d_False}
      _ ->
        {:idris_Prelude_d_Bool_d_True}
    end
    aux2 = aux4
    aux5 = case aux2 do
      {:idris_Prelude_d_Bool_d_False} ->
        {:idris_Prelude_d_Bool_d_True}
      {:idris_Prelude_d_Bool_d_True} ->
        {:idris_Prelude_d_Bool_d_False}
    end
    aux1 = idris_Decidable_d_Equality_d_Decidable_d_Equality_d_Bool_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq.( aux5 ).( {:idris_Prelude_d_Bool_d_True} )
    aux6 = case aux1 do
      {:idris_Prelude_d_Basics_d_No} ->
        {:idris_Prelude_d_Strings_d_StrNil}
      {:idris_Prelude_d_Basics_d_Yes} ->
        {:idris_Prelude_d_Strings_d_StrCons, :idris_error}
    end
    aux6
  end
  # Prelude.Foldable.sum
  idris_Prelude_d_Foldable_d_sum = fn e0 ->
    fn e1 ->
      fn e2 ->
        fn e3 ->
          aux1 = e3
          aux2 = case aux1 do
            {:idris_constructor_s_of_s_Prelude_d_Interfaces_d_Num, in0, in1} ->
              in0
          end
          idris_Prelude_d_Foldable_d_foldr.( :idris_nothing ).( e2 ).( :idris_nothing ).( :idris_nothing ).( aux2 ).( idris_Prelude_d_Interfaces_d_fromInteger.( :idris_nothing ).( e3 ).( 0 ) )
        end
      end
    end
  end
  # unsafePerformPrimIO
  idris_unsafePerformPrimIO = fn ->
    :idris_nothing
  end
  # world
  idris_world = fn e0 ->
    e0
  end
  # Prelude.Bool.||
  idris_Prelude_d_Bool_d__124__124_ = fn e0 ->
    fn e1 ->
      aux1 = e0
      aux2 = case aux1 do
        {:idris_Prelude_d_Bool_d_False} ->
          IdrisRts.force(e1)
        {:idris_Prelude_d_Bool_d_True} ->
          {:idris_Prelude_d_Bool_d_True}
      end
      aux2
    end
  end
  # {__Infer_0}
  __Infer0 = fn ->
    {:__Infer0}
  end
  # {__infer_0}
  __infer0 = fn ->
    {:__infer0}
  end
  # Prelude.List.reverse, reverse'
  idris_Prelude_d_List_d_reverse_c__s_reverse_prime_ = fn e0 ->
    fn e1 ->
      fn e2 ->
        aux1 = e2
        aux2 = case aux1 do
          {:idris_Prelude_d_List_d__colon__colon_, in0, in1} ->
            idris_Prelude_d_List_d_reverse_c__s_reverse_prime_.( :idris_nothing ).( {:idris_Prelude_d_List_d__colon__colon_, in0, e1} ).( in1 )
          {:idris_Prelude_d_List_d_Nil} ->
            e1
        end
        aux2
      end
    end
  end
  # Decidable.Equality.Decidable.Equality.Char implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
  idris_Decidable_d_Equality_d_Decidable_d_Equality_d_Char_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq_c__s_primitiveNotEq = fn ->
    :idris_nothing
  end
  # Decidable.Equality.Decidable.Equality.Int implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
  idris_Decidable_d_Equality_d_Decidable_d_Equality_d_Int_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq_c__s_primitiveNotEq = fn ->
    :idris_nothing
  end
  # Decidable.Equality.Decidable.Equality.Integer implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
  idris_Decidable_d_Equality_d_Decidable_d_Equality_d_Integer_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq_c__s_primitiveNotEq = fn ->
    :idris_nothing
  end
  # Decidable.Equality.Decidable.Equality.ManagedPtr implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
  idris_Decidable_d_Equality_d_Decidable_d_Equality_d_ManagedPtr_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq_c__s_primitiveNotEq = fn ->
    :idris_nothing
  end
  # Decidable.Equality.Decidable.Equality.Ptr implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
  idris_Decidable_d_Equality_d_Decidable_d_Equality_d_Ptr_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq_c__s_primitiveNotEq = fn ->
    :idris_nothing
  end
  # Decidable.Equality.Decidable.Equality.String implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
  idris_Decidable_d_Equality_d_Decidable_d_Equality_d_String_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq_c__s_primitiveNotEq = fn ->
    :idris_nothing
  end
  # Prelude.Prelude.Int implementation of Prelude.Enum, method enumFromTo, go
  idris_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go = fn e0 ->
    fn e1 ->
      fn e2 ->
        fn e3 ->
          idris_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_.( :idris_nothing ).( :idris_nothing ).( {:idris_Prelude_d_List_d_Nil} ).( :idris_error ).( e3 )
        end
      end
    end
  end
  # Prelude.Prelude.Int implementation of Prelude.Enum, method enumFromTo, go'
  idris_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_ = fn e0 ->
    fn e1 ->
      fn e2 ->
        fn e3 ->
          fn e4 ->
            aux1 = e3
            aux2 = case aux1 do
              0 ->
                {:idris_Prelude_d_List_d__colon__colon_, e4, e2}
              _ ->
                in0 = :idris_error
                idris_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_.( :idris_nothing ).( :idris_nothing ).( {:idris_Prelude_d_List_d__colon__colon_, e4, e2} ).( in0 ).( :idris_error )
            end
            aux2
          end
        end
      end
    end
  end
  # Decidable.Equality.Decidable.Equality.Bool implementation of Decidable.Equality.DecEq, method decEq
  idris_Decidable_d_Equality_d_Decidable_d_Equality_d_Bool_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq = fn e0 ->
    fn e1 ->
      aux1 = e1
      aux2 = case aux1 do
        {:idris_Prelude_d_Bool_d_False} ->
          aux3 = e0
          aux4 = case aux3 do
            {:idris_Prelude_d_Bool_d_False} ->
              {:idris_Prelude_d_Basics_d_Yes}
            {:idris_Prelude_d_Bool_d_True} ->
              {:idris_Prelude_d_Basics_d_No}
          end
          aux4
        {:idris_Prelude_d_Bool_d_True} ->
          aux5 = e0
          aux6 = case aux5 do
            {:idris_Prelude_d_Bool_d_False} ->
              {:idris_Prelude_d_Basics_d_No}
            {:idris_Prelude_d_Bool_d_True} ->
              {:idris_Prelude_d_Basics_d_Yes}
          end
          aux6
      end
      aux2
    end
  end
  # Prelude.Prelude.Int implementation of Prelude.Enum, method enumFromTo
  idris_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo = fn e0 ->
    fn e1 ->
      aux1 = idris_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Int_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__lt__eq_.( e0 ).( e1 )
      aux2 = case aux1 do
        {:idris_Prelude_d_Bool_d_False} ->
          idris_Prelude_d_List_d_reverse_c__s_reverse_prime_.( :idris_nothing ).( {:idris_Prelude_d_List_d_Nil} ).( idris_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go.( :idris_nothing ).( :idris_nothing ).( e1 ).( e0 ) )
        {:idris_Prelude_d_Bool_d_True} ->
          idris_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go.( :idris_nothing ).( :idris_nothing ).( e0 ).( e1 )
      end
      aux2
    end
  end
  # Prelude.Interfaces.Prelude.Nat.Nat implementation of Prelude.Interfaces.Eq, method ==
  idris_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Eq_c__s_method_s__eq__eq_ = fn e0 ->
    fn e1 ->
      aux1 = e1
      aux2 = case aux1 do
        0 ->
          aux3 = e0
          aux4 = case aux3 do
            0 ->
              {:idris_Prelude_d_Bool_d_True}
            _ ->
              {:idris_Prelude_d_Bool_d_False}
          end
          aux4
        _ ->
          in0 = :idris_error
          aux5 = e0
          aux6 = case aux5 do
            0 ->
              {:idris_Prelude_d_Bool_d_False}
            _ ->
              in1 = :idris_error
              idris_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Eq_c__s_method_s__eq__eq_.( in1 ).( in0 )
          end
          aux6
        _ ->
          {:idris_Prelude_d_Bool_d_False}
      end
      aux2
    end
  end
  # Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Eq, method ==
  idris_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Eq_c__s_method_s__eq__eq_ = fn e0 ->
    fn e1 ->
      aux1 = e1
      aux2 = case aux1 do
        {:idris_Prelude_d_Show_d_User, in0} ->
          aux3 = e0
          aux4 = case aux3 do
            {:idris_Prelude_d_Show_d_User, in1} ->
              idris_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Eq_c__s_method_s__eq__eq_.( in1 ).( in0 )
            _ ->
              aux5 = idris_Prelude_d_Show_d_precCon.( e0 ) == idris_Prelude_d_Show_d_precCon.( e1 )
              aux6 = case aux5 do
                0 ->
                  {:idris_Prelude_d_Bool_d_False}
                _ ->
                  {:idris_Prelude_d_Bool_d_True}
              end
              aux6
          end
          aux4
        _ ->
          aux7 = idris_Prelude_d_Show_d_precCon.( e0 ) == idris_Prelude_d_Show_d_precCon.( e1 )
          aux8 = case aux7 do
            0 ->
              {:idris_Prelude_d_Bool_d_False}
            _ ->
              {:idris_Prelude_d_Bool_d_True}
          end
          aux8
      end
      aux2
    end
  end
  # Prelude.Foldable.Prelude.List.List implementation of Prelude.Foldable.Foldable, method foldr
  idris_Prelude_d_Foldable_d_Prelude_d_List_d_List_s_implementation_s_of_s_Prelude_d_Foldable_d_Foldable_c__s_method_s_foldr = fn e0 ->
    fn e1 ->
      fn e2 ->
        fn e3 ->
          fn e4 ->
            aux1 = e4
            aux2 = case aux1 do
              {:idris_Prelude_d_List_d__colon__colon_, in0, in1} ->
                e2.( in0 ).( idris_Prelude_d_Foldable_d_Prelude_d_List_d_List_s_implementation_s_of_s_Prelude_d_Foldable_d_Foldable_c__s_method_s_foldr.( :idris_nothing ).( :idris_nothing ).( e2 ).( e3 ).( in1 ) )
              {:idris_Prelude_d_List_d_Nil} ->
                e3
            end
            aux2
          end
        end
      end
    end
  end
  # Prelude.Functor.Prelude.List.List implementation of Prelude.Functor.Functor, method map
  idris_Prelude_d_Functor_d_Prelude_d_List_d_List_s_implementation_s_of_s_Prelude_d_Functor_d_Functor_c__s_method_s_map = fn e0 ->
    fn e1 ->
      fn e2 ->
        fn e3 ->
          aux1 = e3
          aux2 = case aux1 do
            {:idris_Prelude_d_List_d__colon__colon_, in0, in1} ->
              {:idris_Prelude_d_List_d__colon__colon_, e2.( in0 ), idris_Prelude_d_Functor_d_Prelude_d_List_d_List_s_implementation_s_of_s_Prelude_d_Functor_d_Functor_c__s_method_s_map.( :idris_nothing ).( :idris_nothing ).( e2 ).( in1 )}
            {:idris_Prelude_d_List_d_Nil} ->
              {:idris_Prelude_d_List_d_Nil}
          end
          aux2
        end
      end
    end
  end
  # Prelude.Interfaces.Prelude.Interfaces.Int implementation of Prelude.Interfaces.Ord, method <=
  idris_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Int_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__lt__eq_ = fn e0 ->
    fn e1 ->
      aux2 = idris_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Int_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare.( e0 ).( e1 )
      aux3 = case aux2 do
        {:idris_Prelude_d_Interfaces_d_LT} ->
          {:idris_Prelude_d_Bool_d_True}
        _ ->
          {:idris_Prelude_d_Bool_d_False}
      end
      aux1 = aux3
      aux4 = case aux1 do
        {:idris_Prelude_d_Bool_d_False} ->
          IdrisRts.force({:idris_lazy, fn() ->
            idris_Prelude_d_Interfaces_d__lc_Prelude_d_Interfaces_d__at_Prelude_d_Interfaces_d_Ord_36_Int_colon__bang__lt__eq__colon_0___lam___0_rc_.( e0 ).( e1 )
          end})
        {:idris_Prelude_d_Bool_d_True} ->
          {:idris_Prelude_d_Bool_d_True}
      end
      aux4
    end
  end
  # Prelude.Interfaces.{Prelude.Interfaces.@Prelude.Interfaces.Ord$Int:!<=:0_lam_0}
  idris_Prelude_d_Interfaces_d__lc_Prelude_d_Interfaces_d__at_Prelude_d_Interfaces_d_Ord_36_Int_colon__bang__lt__eq__colon_0___lam___0_rc_ = fn e0 ->
    fn e1 ->
      aux1 = e0 == e1
      aux2 = case aux1 do
        0 ->
          {:idris_Prelude_d_Bool_d_False}
        _ ->
          {:idris_Prelude_d_Bool_d_True}
      end
      aux2
    end
  end
  # Prelude.Interfaces.Prelude.Interfaces.Int implementation of Prelude.Interfaces.Ord, method compare
  idris_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Int_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare = fn e0 ->
    fn e1 ->
      aux2 = e0 == e1
      aux3 = case aux2 do
        0 ->
          {:idris_Prelude_d_Bool_d_False}
        _ ->
          {:idris_Prelude_d_Bool_d_True}
      end
      aux1 = aux3
      aux4 = case aux1 do
        {:idris_Prelude_d_Bool_d_False} ->
          aux6 = :idris_error
          aux7 = case aux6 do
            0 ->
              {:idris_Prelude_d_Bool_d_False}
            _ ->
              {:idris_Prelude_d_Bool_d_True}
          end
          aux5 = aux7
          aux8 = case aux5 do
            {:idris_Prelude_d_Bool_d_False} ->
              {:idris_Prelude_d_Interfaces_d_GT}
            {:idris_Prelude_d_Bool_d_True} ->
              {:idris_Prelude_d_Interfaces_d_LT}
          end
          aux8
        {:idris_Prelude_d_Bool_d_True} ->
          {:idris_Prelude_d_Interfaces_d_EQ}
      end
      aux4
    end
  end
  # Prelude.Interfaces.Prelude.Interfaces.Integer implementation of Prelude.Interfaces.Ord, method compare
  idris_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare = fn e0 ->
    fn e1 ->
      aux2 = e0 == e1
      aux3 = case aux2 do
        0 ->
          {:idris_Prelude_d_Bool_d_False}
        _ ->
          {:idris_Prelude_d_Bool_d_True}
      end
      aux1 = aux3
      aux4 = case aux1 do
        {:idris_Prelude_d_Bool_d_False} ->
          aux6 = :idris_error
          aux7 = case aux6 do
            0 ->
              {:idris_Prelude_d_Bool_d_False}
            _ ->
              {:idris_Prelude_d_Bool_d_True}
          end
          aux5 = aux7
          aux8 = case aux5 do
            {:idris_Prelude_d_Bool_d_False} ->
              {:idris_Prelude_d_Interfaces_d_GT}
            {:idris_Prelude_d_Bool_d_True} ->
              {:idris_Prelude_d_Interfaces_d_LT}
          end
          aux8
        {:idris_Prelude_d_Bool_d_True} ->
          {:idris_Prelude_d_Interfaces_d_EQ}
      end
      aux4
    end
  end
  # Prelude.Interfaces.Prelude.Nat.Nat implementation of Prelude.Interfaces.Ord, method compare
  idris_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare = fn e0 ->
    fn e1 ->
      aux1 = e1
      aux2 = case aux1 do
        0 ->
          aux3 = e0
          aux4 = case aux3 do
            0 ->
              {:idris_Prelude_d_Interfaces_d_EQ}
            _ ->
              in0 = :idris_error
              {:idris_Prelude_d_Interfaces_d_GT}
          end
          aux4
        _ ->
          in1 = :idris_error
          aux5 = e0
          aux6 = case aux5 do
            0 ->
              {:idris_Prelude_d_Interfaces_d_LT}
            _ ->
              in2 = :idris_error
              idris_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare.( in2 ).( in1 )
          end
          aux6
      end
      aux2
    end
  end
  # Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method >=
  idris_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__gt__eq_ = fn e0 ->
    fn e1 ->
      aux2 = idris_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare.( e0 ).( e1 )
      aux3 = case aux2 do
        {:idris_Prelude_d_Interfaces_d_GT} ->
          {:idris_Prelude_d_Bool_d_True}
        _ ->
          {:idris_Prelude_d_Bool_d_False}
      end
      aux1 = aux3
      aux4 = case aux1 do
        {:idris_Prelude_d_Bool_d_False} ->
          IdrisRts.force({:idris_lazy, fn() ->
            idris_Prelude_d_Interfaces_d__lc_Prelude_d_Show_d__at_Prelude_d_Interfaces_d_Ord_36_Prec_colon__bang__gt__eq__colon_0___lam___0_rc_.( e0 ).( e1 )
          end})
        {:idris_Prelude_d_Bool_d_True} ->
          {:idris_Prelude_d_Bool_d_True}
      end
      aux4
    end
  end
  # Prelude.Interfaces.{Prelude.Show.@Prelude.Interfaces.Ord$Prec:!>=:0_lam_0}
  idris_Prelude_d_Interfaces_d__lc_Prelude_d_Show_d__at_Prelude_d_Interfaces_d_Ord_36_Prec_colon__bang__gt__eq__colon_0___lam___0_rc_ = fn e0 ->
    fn e1 ->
      idris_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Eq_c__s_method_s__eq__eq_.( e0 ).( e1 )
    end
  end
  # Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method compare
  idris_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare = fn e0 ->
    fn e1 ->
      aux1 = e1
      aux2 = case aux1 do
        {:idris_Prelude_d_Show_d_User, in0} ->
          aux3 = e0
          aux4 = case aux3 do
            {:idris_Prelude_d_Show_d_User, in1} ->
              idris_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare.( in1 ).( in0 )
            _ ->
              idris_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare.( idris_Prelude_d_Show_d_precCon.( e0 ) ).( idris_Prelude_d_Show_d_precCon.( e1 ) )
          end
          aux4
        _ ->
          idris_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare.( idris_Prelude_d_Show_d_precCon.( e0 ) ).( idris_Prelude_d_Show_d_precCon.( e1 ) )
      end
      aux2
    end
  end
  # with block in Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method >
  idris_with_s_block_s_in_s_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__gt_ = fn e0 ->
    fn e1 ->
      fn e2 ->
        aux1 = e0
        aux2 = case aux1 do
          {:idris_Prelude_d_Interfaces_d_GT} ->
            {:idris_Prelude_d_Bool_d_True}
          _ ->
            {:idris_Prelude_d_Bool_d_False}
        end
        aux2
      end
    end
  end
  # with block in Prelude.Strings.strM
  idris_with_s_block_s_in_s_Prelude_d_Strings_d_strM = fn e0 ->
    fn e1 ->
      aux1 = e1
      aux2 = case aux1 do
        {:idris_Prelude_d_Basics_d_No} ->
          {:idris_Prelude_d_Strings_d_StrNil}
        {:idris_Prelude_d_Basics_d_Yes} ->
          {:idris_Prelude_d_Strings_d_StrCons, :idris_error}
      end
      aux2
    end
  end
  # with block in Prelude.Show.firstCharIs
  idris_with_s_block_s_in_s_Prelude_d_Show_d_firstCharIs = fn e0 ->
    fn e1 ->
      fn e2 ->
        aux1 = e2
        aux2 = case aux1 do
          {:idris_Prelude_d_Strings_d_StrCons, in0} ->
            e0.( in0 )
          {:idris_Prelude_d_Strings_d_StrNil} ->
            {:idris_Prelude_d_Bool_d_False}
        end
        aux2
      end
    end
  end
  # with block in Prelude.Interfaces.Prelude.Interfaces.Int implementation of Prelude.Interfaces.Ord, method <
  idris_with_s_block_s_in_s_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Int_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__lt_ = fn e0 ->
    fn e1 ->
      fn e2 ->
        aux1 = e0
        aux2 = case aux1 do
          {:idris_Prelude_d_Interfaces_d_LT} ->
            {:idris_Prelude_d_Bool_d_True}
          _ ->
            {:idris_Prelude_d_Bool_d_False}
        end
        aux2
      end
    end
  end
  # case block in io_bind at IO.idr:107:34
  idris_case_s_block_s_in_s_io___bind_s_at_s_IO_d_idr_colon_107_colon_34 = fn e0 ->
    fn e1 ->
      fn e2 ->
        fn e3 ->
          fn e4 ->
            fn e5 ->
              fn e6 ->
                fn e7 ->
                  e7.( e5 )
                end
              end
            end
          end
        end
      end
    end
  end
  # case block in Void at (casefun Void)
  idris_case_s_block_s_in_s_Void_s_at_s__lp_casefun_s_Void_rp_ = fn ->
    :idris_nothing
  end
  # <<Void eliminator>>
  idris__lt__lt_Void_s_eliminator_gt__gt_ = fn ->
    :idris_nothing
  end
  # constructor of Prelude.Applicative.Alternative
  idris_constructor_s_of_s_Prelude_d_Applicative_d_Alternative = fn ->
    {:idris_constructor_s_of_s_Prelude_d_Applicative_d_Alternative}
  end
  # constructor of Prelude.Applicative.Applicative
  idris_constructor_s_of_s_Prelude_d_Applicative_d_Applicative = fn ->
    {:idris_constructor_s_of_s_Prelude_d_Applicative_d_Applicative}
  end
  # constructor of Prelude.Cast.Cast
  idris_constructor_s_of_s_Prelude_d_Cast_d_Cast = fn ->
    {:idris_constructor_s_of_s_Prelude_d_Cast_d_Cast}
  end
  # constructor of Decidable.Equality.DecEq
  idris_constructor_s_of_s_Decidable_d_Equality_d_DecEq = fn ->
    {:idris_constructor_s_of_s_Decidable_d_Equality_d_DecEq}
  end
  # constructor of Prelude.Enum
  idris_constructor_s_of_s_Prelude_d_Enum = fn ->
    {:idris_constructor_s_of_s_Prelude_d_Enum}
  end
  # constructor of Prelude.Interfaces.Eq
  idris_constructor_s_of_s_Prelude_d_Interfaces_d_Eq = fn ->
    {:idris_constructor_s_of_s_Prelude_d_Interfaces_d_Eq}
  end
  # constructor of Prelude.Foldable.Foldable
  idris_constructor_s_of_s_Prelude_d_Foldable_d_Foldable = fn arg_0 ->
    {:idris_constructor_s_of_s_Prelude_d_Foldable_d_Foldable, arg_0}
  end
  # constructor of Prelude.Interfaces.Fractional
  idris_constructor_s_of_s_Prelude_d_Interfaces_d_Fractional = fn ->
    {:idris_constructor_s_of_s_Prelude_d_Interfaces_d_Fractional}
  end
  # constructor of Prelude.Functor.Functor
  idris_constructor_s_of_s_Prelude_d_Functor_d_Functor = fn ->
    {:idris_constructor_s_of_s_Prelude_d_Functor_d_Functor}
  end
  # constructor of Prelude.Interfaces.Integral
  idris_constructor_s_of_s_Prelude_d_Interfaces_d_Integral = fn ->
    {:idris_constructor_s_of_s_Prelude_d_Interfaces_d_Integral}
  end
  # constructor of Prelude.Interfaces.MaxBound
  idris_constructor_s_of_s_Prelude_d_Interfaces_d_MaxBound = fn ->
    {:idris_constructor_s_of_s_Prelude_d_Interfaces_d_MaxBound}
  end
  # constructor of Prelude.Interfaces.MinBound
  idris_constructor_s_of_s_Prelude_d_Interfaces_d_MinBound = fn ->
    {:idris_constructor_s_of_s_Prelude_d_Interfaces_d_MinBound}
  end
  # constructor of Prelude.Monad.Monad
  idris_constructor_s_of_s_Prelude_d_Monad_d_Monad = fn ->
    {:idris_constructor_s_of_s_Prelude_d_Monad_d_Monad}
  end
  # constructor of Prelude.Algebra.Monoid
  idris_constructor_s_of_s_Prelude_d_Algebra_d_Monoid = fn ->
    {:idris_constructor_s_of_s_Prelude_d_Algebra_d_Monoid}
  end
  # constructor of Prelude.Interfaces.Neg
  idris_constructor_s_of_s_Prelude_d_Interfaces_d_Neg = fn ->
    {:idris_constructor_s_of_s_Prelude_d_Interfaces_d_Neg}
  end
  # constructor of Prelude.Interfaces.Num
  idris_constructor_s_of_s_Prelude_d_Interfaces_d_Num = fn arg_0 ->
    fn arg_1 ->
      {:idris_constructor_s_of_s_Prelude_d_Interfaces_d_Num, arg_0, arg_1}
    end
  end
  # constructor of Prelude.Interfaces.Ord
  idris_constructor_s_of_s_Prelude_d_Interfaces_d_Ord = fn ->
    {:idris_constructor_s_of_s_Prelude_d_Interfaces_d_Ord}
  end
  # constructor of Language.Reflection.Quotable
  idris_constructor_s_of_s_Language_d_Reflection_d_Quotable = fn ->
    {:idris_constructor_s_of_s_Language_d_Reflection_d_Quotable}
  end
  # constructor of Language.Reflection.ReflConst
  idris_constructor_s_of_s_Language_d_Reflection_d_ReflConst = fn ->
    {:idris_constructor_s_of_s_Language_d_Reflection_d_ReflConst}
  end
  # constructor of Prelude.Algebra.Semigroup
  idris_constructor_s_of_s_Prelude_d_Algebra_d_Semigroup = fn ->
    {:idris_constructor_s_of_s_Prelude_d_Algebra_d_Semigroup}
  end
  # constructor of Prelude.Show.Show
  idris_constructor_s_of_s_Prelude_d_Show_d_Show = fn ->
    {:idris_constructor_s_of_s_Prelude_d_Show_d_Show}
  end
  # constructor of Prelude.WellFounded.Sized
  idris_constructor_s_of_s_Prelude_d_WellFounded_d_Sized = fn ->
    {:idris_constructor_s_of_s_Prelude_d_WellFounded_d_Sized}
  end
  # constructor of Prelude.Traversable.Traversable
  idris_constructor_s_of_s_Prelude_d_Traversable_d_Traversable = fn ->
    {:idris_constructor_s_of_s_Prelude_d_Traversable_d_Traversable}
  end
  # constructor of Prelude.Uninhabited.Uninhabited
  idris_constructor_s_of_s_Prelude_d_Uninhabited_d_Uninhabited = fn ->
    {:idris_constructor_s_of_s_Prelude_d_Uninhabited_d_Uninhabited}
  end
  # constructor of Prelude.WellFounded.WellFounded
  idris_constructor_s_of_s_Prelude_d_WellFounded_d_WellFounded = fn ->
    {:idris_constructor_s_of_s_Prelude_d_WellFounded_d_WellFounded}
  end
  # {runMain_0}
  runMain0 = fn ->
    IdrisRts.force(idris_Main_d_main.( :idris_nothing ))
  end
end

IdrisElixir.idris__lc_runMain___0_rc_();
