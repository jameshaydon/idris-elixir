# This file was compiled by idris-elixir.

defmodule IdrisHelper do
  def error(s) do
    IO.puts ("there was an error: " <> s)
  end
end

defmodule IdrisRts do
  def force(x) do
    case x do
      {:idris-lazy, thunk, val} -> val
      {:idris-lazy, thunk} -> thunk.()
      _ -> x
    end
  end
end


# Prelude.Bool.&&
def idris_Prelude_dot_Bool_dot__38__38_(idris__lc_e_0_rc_, idris__lc_e_1_rc_) do
  case (idris__lc_e_0_rc_) do
    {:idris_Prelude_dot_Bool_dot_False} ->
      {:idris_Prelude_dot_Bool_dot_False}
    
    {:idris_Prelude_dot_Bool_dot_True} ->
      IdrisRts.force(idris__lc_e_1_rc_)
    
  end
end

# ForeignEnv.::
def idris_ForeignEnv_dot__58__58_() do
  {:idris_ForeignEnv_dot__58__58_}
end

# Prelude.List.::
def idris_Prelude_dot_List_dot__58__58_(arg_0, arg_1) do
  {:idris_Prelude_dot_List_dot__58__58_, arg_0, arg_1}
end

# Prelude.Stream.::
def idris_Prelude_dot_Stream_dot__58__58_(arg_0) do
  {:idris_Prelude_dot_Stream_dot__58__58_, arg_0}
end

# =
def idris__61_(arg_0, arg_1, arg_2, arg_3) do
  {:idris__61_, arg_0, arg_1, arg_2, arg_3}
end

# Language.Reflection.ATDouble
def idris_Language_dot_Reflection_dot_ATDouble() do
  {:idris_Language_dot_Reflection_dot_ATDouble}
end

# Language.Reflection.ATInt
def idris_Language_dot_Reflection_dot_ATInt() do
  {:idris_Language_dot_Reflection_dot_ATInt}
end

# Language.Reflection.AType
def idris_Language_dot_Reflection_dot_AType() do
  {:idris_Language_dot_Reflection_dot_AType}
end

# Prelude.WellFounded.Access
def idris_Prelude_dot_WellFounded_dot_Access() do
  {:idris_Prelude_dot_WellFounded_dot_Access}
end

# Prelude.WellFounded.Accessible
def idris_Prelude_dot_WellFounded_dot_Accessible(arg_0, arg_1, arg_2) do
  {:idris_Prelude_dot_WellFounded_dot_Accessible, arg_0, arg_1, arg_2}
end

# Prelude.Nat.Additive
def idris_Prelude_dot_Nat_dot_Additive() do
  {:idris_Prelude_dot_Nat_dot_Additive}
end

# Language.Reflection.AllTypes
def idris_Language_dot_Reflection_dot_AllTypes() do
  {:idris_Language_dot_Reflection_dot_AllTypes}
end

# Language.Reflection.Errors.AlreadyDefined
def idris_Language_dot_Reflection_dot_Errors_dot_AlreadyDefined() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_AlreadyDefined}
end

# Prelude.Applicative.Alternative
def idris_Prelude_dot_Applicative_dot_Alternative(arg_0) do
  {:idris_Prelude_dot_Applicative_dot_Alternative, arg_0}
end

# Language.Reflection.App
def idris_Language_dot_Reflection_dot_App() do
  {:idris_Language_dot_Reflection_dot_App}
end

# Prelude.Show.App
def idris_Prelude_dot_Show_dot_App() do
  {:idris_Prelude_dot_Show_dot_App}
end

# Prelude.File.Append
def idris_Prelude_dot_File_dot_Append() do
  {:idris_Prelude_dot_File_dot_Append}
end

# Prelude.Applicative.Applicative
def idris_Prelude_dot_Applicative_dot_Applicative(arg_0) do
  {:idris_Prelude_dot_Applicative_dot_Applicative, arg_0}
end

# Language.Reflection.ApplyTactic
def idris_Language_dot_Reflection_dot_ApplyTactic() do
  {:idris_Language_dot_Reflection_dot_ApplyTactic}
end

# Language.Reflection.ArithTy
def idris_Language_dot_Reflection_dot_ArithTy() do
  {:idris_Language_dot_Reflection_dot_ArithTy}
end

# Language.Reflection.B16
def idris_Language_dot_Reflection_dot_B16() do
  {:idris_Language_dot_Reflection_dot_B16}
end

# Language.Reflection.B32
def idris_Language_dot_Reflection_dot_B32() do
  {:idris_Language_dot_Reflection_dot_B32}
end

# Language.Reflection.B64
def idris_Language_dot_Reflection_dot_B64() do
  {:idris_Language_dot_Reflection_dot_B64}
end

# Language.Reflection.B8
def idris_Language_dot_Reflection_dot_B8() do
  {:idris_Language_dot_Reflection_dot_B8}
end

# Language.Reflection.BI
def idris_Language_dot_Reflection_dot_BI() do
  {:idris_Language_dot_Reflection_dot_BI}
end

# Prelude.Show.Backtick
def idris_Prelude_dot_Show_dot_Backtick() do
  {:idris_Prelude_dot_Show_dot_Backtick}
end

# Language.Reflection.Bind
def idris_Language_dot_Reflection_dot_Bind() do
  {:idris_Language_dot_Reflection_dot_Bind}
end

# Language.Reflection.Binder
def idris_Language_dot_Reflection_dot_Binder(arg_0) do
  {:idris_Language_dot_Reflection_dot_Binder, arg_0}
end

# Prelude.Bool.Bool
def idris_Prelude_dot_Bool_dot_Bool() do
  {:idris_Prelude_dot_Bool_dot_Bool}
end

# Ownership.Borrowed
def idris_Ownership_dot_Borrowed(arg_0) do
  {:idris_Ownership_dot_Borrowed, arg_0}
end

# Language.Reflection.Bound
def idris_Language_dot_Reflection_dot_Bound() do
  {:idris_Language_dot_Reflection_dot_Bound}
end

# Language.Reflection.ByReflection
def idris_Language_dot_Reflection_dot_ByReflection() do
  {:idris_Language_dot_Reflection_dot_ByReflection}
end

# CData
def idris_CData() do
  {:idris_CData}
end

# FFI_C.CFnPtr
def idris_FFI_C_dot_CFnPtr(arg_0) do
  {:idris_FFI_C_dot_CFnPtr, arg_0}
end

# FFI_C.C_Any
def idris_FFI_C_dot_C_Any() do
  {:idris_FFI_C_dot_C_Any}
end

# FFI_C.C_CData
def idris_FFI_C_dot_C_CData() do
  {:idris_FFI_C_dot_C_CData}
end

# FFI_C.C_Float
def idris_FFI_C_dot_C_Float() do
  {:idris_FFI_C_dot_C_Float}
end

# FFI_C.C_Fn
def idris_FFI_C_dot_C_Fn() do
  {:idris_FFI_C_dot_C_Fn}
end

# FFI_C.C_FnBase
def idris_FFI_C_dot_C_FnBase() do
  {:idris_FFI_C_dot_C_FnBase}
end

# FFI_C.C_FnIO
def idris_FFI_C_dot_C_FnIO() do
  {:idris_FFI_C_dot_C_FnIO}
end

# FFI_C.C_FnT
def idris_FFI_C_dot_C_FnT() do
  {:idris_FFI_C_dot_C_FnT}
end

# FFI_C.C_FnTypes
def idris_FFI_C_dot_C_FnTypes(arg_0) do
  {:idris_FFI_C_dot_C_FnTypes, arg_0}
end

# FFI_C.C_IntBits16
def idris_FFI_C_dot_C_IntBits16() do
  {:idris_FFI_C_dot_C_IntBits16}
end

# FFI_C.C_IntBits32
def idris_FFI_C_dot_C_IntBits32() do
  {:idris_FFI_C_dot_C_IntBits32}
end

# FFI_C.C_IntBits64
def idris_FFI_C_dot_C_IntBits64() do
  {:idris_FFI_C_dot_C_IntBits64}
end

# FFI_C.C_IntBits8
def idris_FFI_C_dot_C_IntBits8() do
  {:idris_FFI_C_dot_C_IntBits8}
end

# FFI_C.C_IntChar
def idris_FFI_C_dot_C_IntChar() do
  {:idris_FFI_C_dot_C_IntChar}
end

# FFI_C.C_IntNative
def idris_FFI_C_dot_C_IntNative() do
  {:idris_FFI_C_dot_C_IntNative}
end

# FFI_C.C_IntT
def idris_FFI_C_dot_C_IntT() do
  {:idris_FFI_C_dot_C_IntT}
end

# FFI_C.C_IntTypes
def idris_FFI_C_dot_C_IntTypes(arg_0) do
  {:idris_FFI_C_dot_C_IntTypes, arg_0}
end

# FFI_C.C_MPtr
def idris_FFI_C_dot_C_MPtr() do
  {:idris_FFI_C_dot_C_MPtr}
end

# FFI_C.C_Ptr
def idris_FFI_C_dot_C_Ptr() do
  {:idris_FFI_C_dot_C_Ptr}
end

# FFI_C.C_Str
def idris_FFI_C_dot_C_Str() do
  {:idris_FFI_C_dot_C_Str}
end

# FFI_C.C_Types
def idris_FFI_C_dot_C_Types(arg_0) do
  {:idris_FFI_C_dot_C_Types, arg_0}
end

# FFI_C.C_Unit
def idris_FFI_C_dot_C_Unit() do
  {:idris_FFI_C_dot_C_Unit}
end

# Language.Reflection.Errors.CantConvert
def idris_Language_dot_Reflection_dot_Errors_dot_CantConvert() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_CantConvert}
end

# Language.Reflection.Errors.CantInferType
def idris_Language_dot_Reflection_dot_Errors_dot_CantInferType() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_CantInferType}
end

# Language.Reflection.Errors.CantIntroduce
def idris_Language_dot_Reflection_dot_Errors_dot_CantIntroduce() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_CantIntroduce}
end

# Language.Reflection.Errors.CantMatch
def idris_Language_dot_Reflection_dot_Errors_dot_CantMatch() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_CantMatch}
end

# Language.Reflection.Errors.CantResolve
def idris_Language_dot_Reflection_dot_Errors_dot_CantResolve() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_CantResolve}
end

# Language.Reflection.Errors.CantResolveAlts
def idris_Language_dot_Reflection_dot_Errors_dot_CantResolveAlts() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_CantResolveAlts}
end

# Language.Reflection.Errors.CantSolveGoal
def idris_Language_dot_Reflection_dot_Errors_dot_CantSolveGoal() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_CantSolveGoal}
end

# Language.Reflection.Errors.CantUnify
def idris_Language_dot_Reflection_dot_Errors_dot_CantUnify() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_CantUnify}
end

# Language.Reflection.Case
def idris_Language_dot_Reflection_dot_Case() do
  {:idris_Language_dot_Reflection_dot_Case}
end

# Language.Reflection.CaseN
def idris_Language_dot_Reflection_dot_CaseN() do
  {:idris_Language_dot_Reflection_dot_CaseN}
end

# Prelude.Cast.Cast
def idris_Prelude_dot_Cast_dot_Cast(arg_0, arg_1) do
  {:idris_Prelude_dot_Cast_dot_Cast, arg_0, arg_1}
end

# Language.Reflection.Ch
def idris_Language_dot_Reflection_dot_Ch() do
  {:idris_Language_dot_Reflection_dot_Ch}
end

# Language.Reflection.Claim
def idris_Language_dot_Reflection_dot_Claim() do
  {:idris_Language_dot_Reflection_dot_Claim}
end

# Prelude.Nat.CmpEQ
def idris_Prelude_dot_Nat_dot_CmpEQ() do
  {:idris_Prelude_dot_Nat_dot_CmpEQ}
end

# Prelude.Nat.CmpGT
def idris_Prelude_dot_Nat_dot_CmpGT() do
  {:idris_Prelude_dot_Nat_dot_CmpGT}
end

# Prelude.Nat.CmpLT
def idris_Prelude_dot_Nat_dot_CmpLT() do
  {:idris_Prelude_dot_Nat_dot_CmpLT}
end

# Prelude.Nat.CmpNat
def idris_Prelude_dot_Nat_dot_CmpNat(arg_0, arg_1) do
  {:idris_Prelude_dot_Nat_dot_CmpNat, arg_0, arg_1}
end

# Language.Reflection.Compute
def idris_Language_dot_Reflection_dot_Compute() do
  {:idris_Language_dot_Reflection_dot_Compute}
end

# Language.Reflection.Const
def idris_Language_dot_Reflection_dot_Const() do
  {:idris_Language_dot_Reflection_dot_Const}
end

# Language.Reflection.Elab.Constraint
def idris_Language_dot_Reflection_dot_Elab_dot_Constraint() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Constraint}
end

# Language.Reflection.Elab.Constructor
def idris_Language_dot_Reflection_dot_Elab_dot_Constructor() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Constructor}
end

# Language.Reflection.Elab.ConstructorDefn
def idris_Language_dot_Reflection_dot_Elab_dot_ConstructorDefn() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_ConstructorDefn}
end

# Language.Reflection.Elab.CtorArg
def idris_Language_dot_Reflection_dot_Elab_dot_CtorArg() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_CtorArg}
end

# Language.Reflection.Elab.CtorField
def idris_Language_dot_Reflection_dot_Elab_dot_CtorField() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_CtorField}
end

# Language.Reflection.Elab.CtorParameter
def idris_Language_dot_Reflection_dot_Elab_dot_CtorParameter() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_CtorParameter}
end

# Language.Reflection.DCon
def idris_Language_dot_Reflection_dot_DCon() do
  {:idris_Language_dot_Reflection_dot_DCon}
end

# FFI_Export.DHere
def idris_FFI_Export_dot_DHere() do
  {:idris_FFI_Export_dot_DHere}
end

# Builtins.DPair
def idris_Builtins_dot_DPair(arg_0, arg_1) do
  {:idris_Builtins_dot_DPair, arg_0, arg_1}
end

# FFI_Export.DThere
def idris_FFI_Export_dot_DThere() do
  {:idris_FFI_Export_dot_DThere}
end

# FFI_Export.Data
def idris_FFI_Export_dot_Data(arg_0, arg_1, arg_2) do
  {:idris_FFI_Export_dot_Data, arg_0, arg_1, arg_2}
end

# FFI_Export.DataDefined
def idris_FFI_Export_dot_DataDefined(arg_0, arg_1, arg_2, arg_3) do
  {:idris_FFI_Export_dot_DataDefined, arg_0, arg_1, arg_2, arg_3}
end

# Language.Reflection.Elab.DataDefn
def idris_Language_dot_Reflection_dot_Elab_dot_DataDefn() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_DataDefn}
end

# Language.Reflection.Elab.Datatype
def idris_Language_dot_Reflection_dot_Elab_dot_Datatype() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Datatype}
end

# Prelude.Basics.Dec
def idris_Prelude_dot_Basics_dot_Dec(arg_0) do
  {:idris_Prelude_dot_Basics_dot_Dec, arg_0}
end

# Decidable.Equality.DecEq
def idris_Decidable_dot_Equality_dot_DecEq(arg_0) do
  {:idris_Decidable_dot_Equality_dot_DecEq, arg_0}
end

# Language.Reflection.Elab.Declare
def idris_Language_dot_Reflection_dot_Elab_dot_Declare() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Declare}
end

# Language.Reflection.Elab.DefineDatatype
def idris_Language_dot_Reflection_dot_Elab_dot_DefineDatatype() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_DefineDatatype}
end

# Language.Reflection.Elab.DefineFun
def idris_Language_dot_Reflection_dot_Elab_dot_DefineFun() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_DefineFun}
end

# Delay
def idris_Delay(arg_0) do
  {:idris_Delay, arg_0}
end

# DelayReason
def idris_DelayReason() do
  {:idris_DelayReason}
end

# Delayed
def idris_Delayed(arg_0, arg_1) do
  {:idris_Delayed, arg_0, arg_1}
end

# Prelude.Show.Dollar
def idris_Prelude_dot_Show_dot_Dollar() do
  {:idris_Prelude_dot_Show_dot_Dollar}
end

# Prelude.Interfaces.EQ
def idris_Prelude_dot_Interfaces_dot_EQ() do
  {:idris_Prelude_dot_Interfaces_dot_EQ}
end

# Prelude.Either.Either
def idris_Prelude_dot_Either_dot_Either(arg_0, arg_1) do
  {:idris_Prelude_dot_Either_dot_Either, arg_0, arg_1}
end

# Language.Reflection.Elab.Elab
def idris_Language_dot_Reflection_dot_Elab_dot_Elab(arg_0) do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Elab, arg_0}
end

# Prelude.Pairs.Element
def idris_Prelude_dot_Pairs_dot_Element() do
  {:idris_Prelude_dot_Pairs_dot_Element}
end

# Language.Reflection.ElimN
def idris_Language_dot_Reflection_dot_ElimN() do
  {:idris_Language_dot_Reflection_dot_ElimN}
end

# FFI_Export.End
def idris_FFI_Export_dot_End() do
  {:idris_FFI_Export_dot_End}
end

# Prelude.Enum
def idris_Prelude_dot_Enum(arg_0) do
  {:idris_Prelude_dot_Enum, arg_0}
end

# Prelude.Interfaces.Eq
def idris_Prelude_dot_Interfaces_dot_Eq(arg_0) do
  {:idris_Prelude_dot_Interfaces_dot_Eq, arg_0}
end

# Prelude.Show.Eq
def idris_Prelude_dot_Show_dot_Eq() do
  {:idris_Prelude_dot_Show_dot_Eq}
end

# Language.Reflection.Elab.Erased
def idris_Language_dot_Reflection_dot_Elab_dot_Erased() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Erased}
end

# Language.Reflection.Erased
def idris_Language_dot_Reflection_dot_Erased() do
  {:idris_Language_dot_Reflection_dot_Erased}
end

# Language.Reflection.Elab.Erasure
def idris_Language_dot_Reflection_dot_Elab_dot_Erasure() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Erasure}
end

# Language.Reflection.Errors.Err
def idris_Language_dot_Reflection_dot_Errors_dot_Err() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_Err}
end

# Prelude.Providers.Error
def idris_Prelude_dot_Providers_dot_Error() do
  {:idris_Prelude_dot_Providers_dot_Error}
end

# Language.Reflection.ErrorReportPart
def idris_Language_dot_Reflection_dot_ErrorReportPart() do
  {:idris_Language_dot_Reflection_dot_ErrorReportPart}
end

# Prelude.Pairs.Evidence
def idris_Prelude_dot_Pairs_dot_Evidence() do
  {:idris_Prelude_dot_Pairs_dot_Evidence}
end

# Language.Reflection.Exact
def idris_Language_dot_Reflection_dot_Exact() do
  {:idris_Language_dot_Reflection_dot_Exact}
end

# Prelude.Pairs.Exists
def idris_Prelude_dot_Pairs_dot_Exists(arg_0, arg_1) do
  {:idris_Prelude_dot_Pairs_dot_Exists, arg_0, arg_1}
end

# Language.Reflection.Elab.Explicit
def idris_Language_dot_Reflection_dot_Elab_dot_Explicit() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Explicit}
end

# ForeignEnv.FEnv
def idris_ForeignEnv_dot_FEnv(arg_0, arg_1) do
  {:idris_ForeignEnv_dot_FEnv, arg_0, arg_1}
end

# FFI
def idris_FFI() do
  {:idris_FFI}
end

# FFI_Export.FFI_Base
def idris_FFI_Export_dot_FFI_Base(arg_0, arg_1, arg_2) do
  {:idris_FFI_Export_dot_FFI_Base, arg_0, arg_1, arg_2}
end

# FFI_Export.FFI_ExpType
def idris_FFI_Export_dot_FFI_ExpType(arg_0, arg_1) do
  {:idris_FFI_Export_dot_FFI_ExpType, arg_0, arg_1}
end

# FFI_Export.FFI_Export
def idris_FFI_Export_dot_FFI_Export(arg_0, arg_1, arg_2) do
  {:idris_FFI_Export_dot_FFI_Export, arg_0, arg_1, arg_2}
end

# FFI_Export.FFI_Exportable
def idris_FFI_Export_dot_FFI_Exportable(arg_0, arg_1, arg_2) do
  {:idris_FFI_Export_dot_FFI_Exportable, arg_0, arg_1, arg_2}
end

# FFI_Export.FFI_Fun
def idris_FFI_Export_dot_FFI_Fun(arg_0, arg_1) do
  {:idris_FFI_Export_dot_FFI_Fun, arg_0, arg_1}
end

# FFI_Export.FFI_IO
def idris_FFI_Export_dot_FFI_IO(arg_0) do
  {:idris_FFI_Export_dot_FFI_IO, arg_0}
end

# FFI_Export.FFI_Prim
def idris_FFI_Export_dot_FFI_Prim(arg_0) do
  {:idris_FFI_Export_dot_FFI_Prim, arg_0}
end

# FFI_Export.FFI_Ret
def idris_FFI_Export_dot_FFI_Ret(arg_0) do
  {:idris_FFI_Export_dot_FFI_Ret, arg_0}
end

# FFun
def idris_FFun() do
  {:idris_FFun}
end

# Prelude.File.FHandle
def idris_Prelude_dot_File_dot_FHandle(arg_0) do
  {:idris_Prelude_dot_File_dot_FHandle, arg_0}
end

# FRet
def idris_FRet() do
  {:idris_FRet}
end

# FTy
def idris_FTy(arg_0, arg_1, arg_2) do
  {:idris_FTy, arg_0, arg_1, arg_2}
end

# Language.Reflection.Fail
def idris_Language_dot_Reflection_dot_Fail() do
  {:idris_Language_dot_Reflection_dot_Fail}
end

# Prelude.Bool.False
def idris_Prelude_dot_Bool_dot_False() do
  {:idris_Prelude_dot_Bool_dot_False}
end

# Prelude.File.File
def idris_Prelude_dot_File_dot_File() do
  {:idris_Prelude_dot_File_dot_File}
end

# Prelude.File.FileError
def idris_Prelude_dot_File_dot_FileError() do
  {:idris_Prelude_dot_File_dot_FileError}
end

# Language.Reflection.FileLoc
def idris_Language_dot_Reflection_dot_FileLoc() do
  {:idris_Language_dot_Reflection_dot_FileLoc}
end

# Prelude.File.FileNotFound
def idris_Prelude_dot_File_dot_FileNotFound() do
  {:idris_Prelude_dot_File_dot_FileNotFound}
end

# Prelude.File.FileReadError
def idris_Prelude_dot_File_dot_FileReadError() do
  {:idris_Prelude_dot_File_dot_FileReadError}
end

# Prelude.File.FileWriteError
def idris_Prelude_dot_File_dot_FileWriteError() do
  {:idris_Prelude_dot_File_dot_FileWriteError}
end

# Language.Reflection.Fill
def idris_Language_dot_Reflection_dot_Fill() do
  {:idris_Language_dot_Reflection_dot_Fill}
end

# Language.Reflection.Elab.Fixity
def idris_Language_dot_Reflection_dot_Elab_dot_Fixity() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Fixity}
end

# Language.Reflection.Fl
def idris_Language_dot_Reflection_dot_Fl() do
  {:idris_Language_dot_Reflection_dot_Fl}
end

# Language.Reflection.Focus
def idris_Language_dot_Reflection_dot_Focus() do
  {:idris_Language_dot_Reflection_dot_Focus}
end

# Prelude.Foldable.Foldable
def idris_Prelude_dot_Foldable_dot_Foldable(arg_0) do
  {:idris_Prelude_dot_Foldable_dot_Foldable, arg_0}
end

# Main.FooBar
def idris_Main_dot_FooBar(arg_0, arg_1) do
  {:idris_Main_dot_FooBar, arg_0, arg_1}
end

# Main.FooFoo
def idris_Main_dot_FooFoo(arg_0, arg_1) do
  {:idris_Main_dot_FooFoo, arg_0, arg_1}
end

# Force
def idris_Force(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_) do
  IdrisRts.force(idris__lc_e_2_rc_)
end

# Language.Reflection.Forgot
def idris_Language_dot_Reflection_dot_Forgot() do
  {:idris_Language_dot_Reflection_dot_Forgot}
end

# Prelude.Interfaces.Fractional
def idris_Prelude_dot_Interfaces_dot_Fractional(arg_0) do
  {:idris_Prelude_dot_Interfaces_dot_Fractional, arg_0}
end

# FFI_Export.Fun
def idris_FFI_Export_dot_Fun(arg_0, arg_1, arg_2, arg_3) do
  {:idris_FFI_Export_dot_Fun, arg_0, arg_1, arg_2, arg_3}
end

# Language.Reflection.Elab.FunArg
def idris_Language_dot_Reflection_dot_Elab_dot_FunArg() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_FunArg}
end

# Language.Reflection.Elab.FunClause
def idris_Language_dot_Reflection_dot_Elab_dot_FunClause(arg_0) do
  {:idris_Language_dot_Reflection_dot_Elab_dot_FunClause, arg_0}
end

# Language.Reflection.Elab.FunDefn
def idris_Language_dot_Reflection_dot_Elab_dot_FunDefn(arg_0) do
  {:idris_Language_dot_Reflection_dot_Elab_dot_FunDefn, arg_0}
end

# Prelude.Functor.Functor
def idris_Prelude_dot_Functor_dot_Functor(arg_0) do
  {:idris_Prelude_dot_Functor_dot_Functor, arg_0}
end

# Language.Reflection.GHole
def idris_Language_dot_Reflection_dot_GHole() do
  {:idris_Language_dot_Reflection_dot_GHole}
end

# Prelude.Interfaces.GT
def idris_Prelude_dot_Interfaces_dot_GT() do
  {:idris_Prelude_dot_Interfaces_dot_GT}
end

# Prelude.File.GenericFileError
def idris_Prelude_dot_File_dot_GenericFileError() do
  {:idris_Prelude_dot_File_dot_GenericFileError}
end

# Prelude.Nat.GetAdditive
def idris_Prelude_dot_Nat_dot_GetAdditive() do
  {:idris_Prelude_dot_Nat_dot_GetAdditive}
end

# Prelude.Nat.GetMultiplicative
def idris_Prelude_dot_Nat_dot_GetMultiplicative() do
  {:idris_Prelude_dot_Nat_dot_GetMultiplicative}
end

# Language.Reflection.GoalType
def idris_Language_dot_Reflection_dot_GoalType() do
  {:idris_Language_dot_Reflection_dot_GoalType}
end

# Language.Reflection.Guess
def idris_Language_dot_Reflection_dot_Guess() do
  {:idris_Language_dot_Reflection_dot_Guess}
end

# Main.Hello
def idris_Main_dot_Hello() do
  {:idris_Main_dot_Hello}
end

# Language.Reflection.Hole
def idris_Language_dot_Reflection_dot_Hole() do
  {:idris_Language_dot_Reflection_dot_Hole}
end

# Language.Reflection.I
def idris_Language_dot_Reflection_dot_I() do
  {:idris_Language_dot_Reflection_dot_I}
end

# IO'
def idris_IO_39_(arg_0, arg_1) do
  {:idris_IO_39_, arg_0, arg_1}
end

# Language.Reflection.IT16
def idris_Language_dot_Reflection_dot_IT16() do
  {:idris_Language_dot_Reflection_dot_IT16}
end

# Language.Reflection.IT32
def idris_Language_dot_Reflection_dot_IT32() do
  {:idris_Language_dot_Reflection_dot_IT32}
end

# Language.Reflection.IT64
def idris_Language_dot_Reflection_dot_IT64() do
  {:idris_Language_dot_Reflection_dot_IT64}
end

# Language.Reflection.IT8
def idris_Language_dot_Reflection_dot_IT8() do
  {:idris_Language_dot_Reflection_dot_IT8}
end

# Language.Reflection.ITBig
def idris_Language_dot_Reflection_dot_ITBig() do
  {:idris_Language_dot_Reflection_dot_ITBig}
end

# Language.Reflection.ITChar
def idris_Language_dot_Reflection_dot_ITChar() do
  {:idris_Language_dot_Reflection_dot_ITChar}
end

# Language.Reflection.ITFixed
def idris_Language_dot_Reflection_dot_ITFixed() do
  {:idris_Language_dot_Reflection_dot_ITFixed}
end

# Language.Reflection.ITNative
def idris_Language_dot_Reflection_dot_ITNative() do
  {:idris_Language_dot_Reflection_dot_ITNative}
end

# Language.Reflection.Implementation
def idris_Language_dot_Reflection_dot_Implementation() do
  {:idris_Language_dot_Reflection_dot_Implementation}
end

# Language.Reflection.ImplementationCtorN
def idris_Language_dot_Reflection_dot_ImplementationCtorN() do
  {:idris_Language_dot_Reflection_dot_ImplementationCtorN}
end

# Language.Reflection.ImplementationN
def idris_Language_dot_Reflection_dot_ImplementationN() do
  {:idris_Language_dot_Reflection_dot_ImplementationN}
end

# Language.Reflection.Elab.Implicit
def idris_Language_dot_Reflection_dot_Elab_dot_Implicit() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Implicit}
end

# Prelude.List.InBounds
def idris_Prelude_dot_List_dot_InBounds(arg_0, arg_1, arg_2) do
  {:idris_Prelude_dot_List_dot_InBounds, arg_0, arg_1, arg_2}
end

# Prelude.List.InFirst
def idris_Prelude_dot_List_dot_InFirst() do
  {:idris_Prelude_dot_List_dot_InFirst}
end

# Prelude.List.InLater
def idris_Prelude_dot_List_dot_InLater() do
  {:idris_Prelude_dot_List_dot_InLater}
end

# Language.Reflection.Errors.Inaccessible
def idris_Language_dot_Reflection_dot_Errors_dot_Inaccessible() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_Inaccessible}
end

# Language.Reflection.Errors.IncompleteTerm
def idris_Language_dot_Reflection_dot_Errors_dot_IncompleteTerm() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_IncompleteTerm}
end

# Language.Reflection.Induction
def idris_Language_dot_Reflection_dot_Induction() do
  {:idris_Language_dot_Reflection_dot_Induction}
end

# Infinite
def idris_Infinite() do
  {:idris_Infinite}
end

# Language.Reflection.Errors.InfiniteUnify
def idris_Language_dot_Reflection_dot_Errors_dot_InfiniteUnify() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_InfiniteUnify}
end

# Language.Reflection.Elab.Infix
def idris_Language_dot_Reflection_dot_Elab_dot_Infix() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Infix}
end

# Language.Reflection.Elab.Infixl
def idris_Language_dot_Reflection_dot_Elab_dot_Infixl() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Infixl}
end

# Language.Reflection.Elab.Infixr
def idris_Language_dot_Reflection_dot_Elab_dot_Infixr() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Infixr}
end

# Language.Reflection.IntTy
def idris_Language_dot_Reflection_dot_IntTy() do
  {:idris_Language_dot_Reflection_dot_IntTy}
end

# Prelude.Interfaces.Integral
def idris_Prelude_dot_Interfaces_dot_Integral(arg_0) do
  {:idris_Prelude_dot_Interfaces_dot_Integral, arg_0}
end

# Language.Reflection.Errors.InternalMsg
def idris_Language_dot_Reflection_dot_Errors_dot_InternalMsg() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_InternalMsg}
end

# Language.Reflection.Intro
def idris_Language_dot_Reflection_dot_Intro() do
  {:idris_Language_dot_Reflection_dot_Intro}
end

# Language.Reflection.Intros
def idris_Language_dot_Reflection_dot_Intros() do
  {:idris_Language_dot_Reflection_dot_Intros}
end

# Language.Reflection.Errors.InvalidTCArg
def idris_Language_dot_Reflection_dot_Errors_dot_InvalidTCArg() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_InvalidTCArg}
end

# Prelude.Maybe.IsJust
def idris_Prelude_dot_Maybe_dot_IsJust(arg_0, arg_1) do
  {:idris_Prelude_dot_Maybe_dot_IsJust, arg_0, arg_1}
end

# Prelude.List.IsNonEmpty
def idris_Prelude_dot_List_dot_IsNonEmpty() do
  {:idris_Prelude_dot_List_dot_IsNonEmpty}
end

# Prelude.Maybe.ItIsJust
def idris_Prelude_dot_Maybe_dot_ItIsJust() do
  {:idris_Prelude_dot_Maybe_dot_ItIsJust}
end

# JS_Float
def idris_JS_Float() do
  {:idris_JS_Float}
end

# JS_Fn
def idris_JS_Fn() do
  {:idris_JS_Fn}
end

# JS_FnBase
def idris_JS_FnBase() do
  {:idris_JS_FnBase}
end

# JS_FnIO
def idris_JS_FnIO() do
  {:idris_JS_FnIO}
end

# JS_FnT
def idris_JS_FnT() do
  {:idris_JS_FnT}
end

# JS_FnTypes
def idris_JS_FnTypes(arg_0) do
  {:idris_JS_FnTypes, arg_0}
end

# JS_IntChar
def idris_JS_IntChar() do
  {:idris_JS_IntChar}
end

# JS_IntNative
def idris_JS_IntNative() do
  {:idris_JS_IntNative}
end

# JS_IntT
def idris_JS_IntT() do
  {:idris_JS_IntT}
end

# JS_IntTypes
def idris_JS_IntTypes(arg_0) do
  {:idris_JS_IntTypes, arg_0}
end

# JS_Ptr
def idris_JS_Ptr() do
  {:idris_JS_Ptr}
end

# JS_Str
def idris_JS_Str() do
  {:idris_JS_Str}
end

# JS_Types
def idris_JS_Types(arg_0) do
  {:idris_JS_Types, arg_0}
end

# JS_Unit
def idris_JS_Unit() do
  {:idris_JS_Unit}
end

# JsFn
def idris_JsFn(arg_0) do
  {:idris_JsFn, arg_0}
end

# Prelude.Maybe.Just
def idris_Prelude_dot_Maybe_dot_Just(arg_0) do
  {:idris_Prelude_dot_Maybe_dot_Just, arg_0}
end

# Prelude.Interfaces.LT
def idris_Prelude_dot_Interfaces_dot_LT() do
  {:idris_Prelude_dot_Interfaces_dot_LT}
end

# Prelude.Nat.LTE
def idris_Prelude_dot_Nat_dot_LTE(arg_0, arg_1) do
  {:idris_Prelude_dot_Nat_dot_LTE, arg_0, arg_1}
end

# Prelude.Nat.LTESucc
def idris_Prelude_dot_Nat_dot_LTESucc() do
  {:idris_Prelude_dot_Nat_dot_LTESucc}
end

# Prelude.Nat.LTEZero
def idris_Prelude_dot_Nat_dot_LTEZero() do
  {:idris_Prelude_dot_Nat_dot_LTEZero}
end

# Language.Reflection.Lam
def idris_Language_dot_Reflection_dot_Lam() do
  {:idris_Language_dot_Reflection_dot_Lam}
end

# LazyValue
def idris_LazyValue() do
  {:idris_LazyValue}
end

# Prelude.Either.Left
def idris_Prelude_dot_Either_dot_Left(arg_0) do
  {:idris_Prelude_dot_Either_dot_Left, arg_0}
end

# Prelude.Nat.LeftIsNotZero
def idris_Prelude_dot_Nat_dot_LeftIsNotZero() do
  {:idris_Prelude_dot_Nat_dot_LeftIsNotZero}
end

# Language.Reflection.Let
def idris_Language_dot_Reflection_dot_Let() do
  {:idris_Language_dot_Reflection_dot_Let}
end

# Language.Reflection.LetTac
def idris_Language_dot_Reflection_dot_LetTac() do
  {:idris_Language_dot_Reflection_dot_LetTac}
end

# Language.Reflection.LetTacTy
def idris_Language_dot_Reflection_dot_LetTacTy() do
  {:idris_Language_dot_Reflection_dot_LetTacTy}
end

# Prelude.List.List
def idris_Prelude_dot_List_dot_List(arg_0) do
  {:idris_Prelude_dot_List_dot_List, arg_0}
end

# Language.Reflection.Errors.LoadingFailed
def idris_Language_dot_Reflection_dot_Errors_dot_LoadingFailed() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_LoadingFailed}
end

# Language.Reflection.MN
def idris_Language_dot_Reflection_dot_MN() do
  {:idris_Language_dot_Reflection_dot_MN}
end

# ManagedPtr
def idris_ManagedPtr() do
  {:idris_ManagedPtr}
end

# Prelude.Interfaces.MaxBound
def idris_Prelude_dot_Interfaces_dot_MaxBound(arg_0) do
  {:idris_Prelude_dot_Interfaces_dot_MaxBound, arg_0}
end

# Prelude.Maybe.Maybe
def idris_Prelude_dot_Maybe_dot_Maybe(arg_0) do
  {:idris_Prelude_dot_Maybe_dot_Maybe, arg_0}
end

# Language.Reflection.MetaN
def idris_Language_dot_Reflection_dot_MetaN() do
  {:idris_Language_dot_Reflection_dot_MetaN}
end

# Language.Reflection.MethodN
def idris_Language_dot_Reflection_dot_MethodN() do
  {:idris_Language_dot_Reflection_dot_MethodN}
end

# Prelude.Interfaces.MinBound
def idris_Prelude_dot_Interfaces_dot_MinBound(arg_0) do
  {:idris_Prelude_dot_Interfaces_dot_MinBound, arg_0}
end

# FFI_C.MkCFnPtr
def idris_FFI_C_dot_MkCFnPtr(arg_0) do
  {:idris_FFI_C_dot_MkCFnPtr, arg_0}
end

# Builtins.MkDPair
def idris_Builtins_dot_MkDPair() do
  {:idris_Builtins_dot_MkDPair}
end

# Language.Reflection.Elab.MkDatatype
def idris_Language_dot_Reflection_dot_Elab_dot_MkDatatype() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_MkDatatype}
end

# MkFFI
def idris_MkFFI() do
  {:idris_MkFFI}
end

# Language.Reflection.Elab.MkFunArg
def idris_Language_dot_Reflection_dot_Elab_dot_MkFunArg() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_MkFunArg}
end

# Language.Reflection.Elab.MkFunClause
def idris_Language_dot_Reflection_dot_Elab_dot_MkFunClause() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_MkFunClause}
end

# MkIO
def idris_MkIO(arg_0) do
  {:idris_MkIO, arg_0}
end

# Language.Reflection.Elab.MkImpossibleClause
def idris_Language_dot_Reflection_dot_Elab_dot_MkImpossibleClause() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_MkImpossibleClause}
end

# MkJsFn
def idris_MkJsFn(arg_0) do
  {:idris_MkJsFn, arg_0}
end

# Builtins.MkPair
def idris_Builtins_dot_MkPair(arg_0, arg_1) do
  {:idris_Builtins_dot_MkPair, arg_0, arg_1}
end

# FFI_C.MkRaw
def idris_FFI_C_dot_MkRaw(arg_0) do
  {:idris_FFI_C_dot_MkRaw, arg_0}
end

# Prelude.Strings.MkString
def idris_Prelude_dot_Strings_dot_MkString() do
  {:idris_Prelude_dot_Strings_dot_MkString}
end

# Builtins.MkUPair
def idris_Builtins_dot_MkUPair(arg_0, arg_1) do
  {:idris_Builtins_dot_MkUPair, arg_0, arg_1}
end

# MkUnit
def idris_MkUnit() do
  {:idris_MkUnit}
end

# Prelude.File.Mode
def idris_Prelude_dot_File_dot_Mode() do
  {:idris_Prelude_dot_File_dot_Mode}
end

# Prelude.Monad.Monad
def idris_Prelude_dot_Monad_dot_Monad(arg_0) do
  {:idris_Prelude_dot_Monad_dot_Monad, arg_0}
end

# Prelude.Algebra.Monoid
def idris_Prelude_dot_Algebra_dot_Monoid(arg_0) do
  {:idris_Prelude_dot_Algebra_dot_Monoid, arg_0}
end

# Language.Reflection.Errors.Msg
def idris_Language_dot_Reflection_dot_Errors_dot_Msg() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_Msg}
end

# Prelude.Nat.Multiplicative
def idris_Prelude_dot_Nat_dot_Multiplicative() do
  {:idris_Prelude_dot_Nat_dot_Multiplicative}
end

# Language.Reflection.NS
def idris_Language_dot_Reflection_dot_NS() do
  {:idris_Language_dot_Reflection_dot_NS}
end

# Language.Reflection.NamePart
def idris_Language_dot_Reflection_dot_NamePart() do
  {:idris_Language_dot_Reflection_dot_NamePart}
end

# Language.Reflection.NameType
def idris_Language_dot_Reflection_dot_NameType() do
  {:idris_Language_dot_Reflection_dot_NameType}
end

# Prelude.Nat.Nat
def idris_Prelude_dot_Nat_dot_Nat() do
  {:idris_Prelude_dot_Nat_dot_Nat}
end

# Language.Reflection.NativeTy
def idris_Language_dot_Reflection_dot_NativeTy() do
  {:idris_Language_dot_Reflection_dot_NativeTy}
end

# Prelude.Interfaces.Neg
def idris_Prelude_dot_Interfaces_dot_Neg(arg_0) do
  {:idris_Prelude_dot_Interfaces_dot_Neg, arg_0}
end

# ForeignEnv.Nil
def idris_ForeignEnv_dot_Nil() do
  {:idris_ForeignEnv_dot_Nil}
end

# Prelude.List.Nil
def idris_Prelude_dot_List_dot_Nil() do
  {:idris_Prelude_dot_List_dot_Nil}
end

# Prelude.Basics.No
def idris_Prelude_dot_Basics_dot_No() do
  {:idris_Prelude_dot_Basics_dot_No}
end

# Language.Reflection.Errors.NoEliminator
def idris_Language_dot_Reflection_dot_Errors_dot_NoEliminator() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_NoEliminator}
end

# Language.Reflection.Errors.NoRewriting
def idris_Language_dot_Reflection_dot_Errors_dot_NoRewriting() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_NoRewriting}
end

# Language.Reflection.Errors.NoSuchVariable
def idris_Language_dot_Reflection_dot_Errors_dot_NoSuchVariable() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_NoSuchVariable}
end

# Language.Reflection.Errors.NoTypeDecl
def idris_Language_dot_Reflection_dot_Errors_dot_NoTypeDecl() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_NoTypeDecl}
end

# Language.Reflection.Errors.NoValidAlts
def idris_Language_dot_Reflection_dot_Errors_dot_NoValidAlts() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_NoValidAlts}
end

# Language.Reflection.Errors.NonCollapsiblePostulate
def idris_Language_dot_Reflection_dot_Errors_dot_NonCollapsiblePostulate() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_NonCollapsiblePostulate}
end

# Prelude.List.NonEmpty
def idris_Prelude_dot_List_dot_NonEmpty(arg_0, arg_1) do
  {:idris_Prelude_dot_List_dot_NonEmpty, arg_0, arg_1}
end

# Language.Reflection.Errors.NonFunctionType
def idris_Language_dot_Reflection_dot_Errors_dot_NonFunctionType() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_NonFunctionType}
end

# Prelude.Nat.NotBothZero
def idris_Prelude_dot_Nat_dot_NotBothZero(arg_0, arg_1) do
  {:idris_Prelude_dot_Nat_dot_NotBothZero, arg_0, arg_1}
end

# Language.Reflection.Errors.NotEquality
def idris_Language_dot_Reflection_dot_Errors_dot_NotEquality() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_NotEquality}
end

# Language.Reflection.Elab.NotErased
def idris_Language_dot_Reflection_dot_Elab_dot_NotErased() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_NotErased}
end

# Language.Reflection.Errors.NotInjective
def idris_Language_dot_Reflection_dot_Errors_dot_NotInjective() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_NotInjective}
end

# Prelude.Maybe.Nothing
def idris_Prelude_dot_Maybe_dot_Nothing() do
  {:idris_Prelude_dot_Maybe_dot_Nothing}
end

# Language.Reflection.NullType
def idris_Language_dot_Reflection_dot_NullType() do
  {:idris_Language_dot_Reflection_dot_NullType}
end

# Prelude.Interfaces.Num
def idris_Prelude_dot_Interfaces_dot_Num(arg_0) do
  {:idris_Prelude_dot_Interfaces_dot_Num, arg_0}
end

# Prelude.Show.Open
def idris_Prelude_dot_Show_dot_Open() do
  {:idris_Prelude_dot_Show_dot_Open}
end

# Prelude.Interfaces.Ord
def idris_Prelude_dot_Interfaces_dot_Ord(arg_0) do
  {:idris_Prelude_dot_Interfaces_dot_Ord, arg_0}
end

# Prelude.Interfaces.Ordering
def idris_Prelude_dot_Interfaces_dot_Ordering() do
  {:idris_Prelude_dot_Interfaces_dot_Ordering}
end

# Language.Reflection.P
def idris_Language_dot_Reflection_dot_P() do
  {:idris_Language_dot_Reflection_dot_P}
end

# Language.Reflection.PVTy
def idris_Language_dot_Reflection_dot_PVTy() do
  {:idris_Language_dot_Reflection_dot_PVTy}
end

# Language.Reflection.PVar
def idris_Language_dot_Reflection_dot_PVar() do
  {:idris_Language_dot_Reflection_dot_PVar}
end

# Builtins.Pair
def idris_Builtins_dot_Pair(arg_0, arg_1) do
  {:idris_Builtins_dot_Pair, arg_0, arg_1}
end

# Language.Reflection.ParentN
def idris_Language_dot_Reflection_dot_ParentN() do
  {:idris_Language_dot_Reflection_dot_ParentN}
end

# Prelude.File.PermissionDenied
def idris_Prelude_dot_File_dot_PermissionDenied() do
  {:idris_Prelude_dot_File_dot_PermissionDenied}
end

# Language.Reflection.Pi
def idris_Language_dot_Reflection_dot_Pi() do
  {:idris_Language_dot_Reflection_dot_Pi}
end

# Language.Reflection.Elab.Plicity
def idris_Language_dot_Reflection_dot_Elab_dot_Plicity() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Plicity}
end

# Prelude.Show.Prec
def idris_Prelude_dot_Show_dot_Prec() do
  {:idris_Prelude_dot_Show_dot_Prec}
end

# Language.Reflection.Elab.Prefix
def idris_Language_dot_Reflection_dot_Elab_dot_Prefix() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prefix}
end

# Prelude.Show.PrefixMinus
def idris_Prelude_dot_Show_dot_PrefixMinus() do
  {:idris_Prelude_dot_Show_dot_PrefixMinus}
end

# PrimIO
def idris_PrimIO(arg_0) do
  {:idris_PrimIO, arg_0}
end

# Language.Reflection.Elab.Prim__AddImplementation
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__AddImplementation() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__AddImplementation}
end

# Language.Reflection.Elab.Prim__Apply
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Apply() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Apply}
end

# Language.Reflection.Elab.Prim__Attack
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Attack() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Attack}
end

# Language.Reflection.Elab.Prim__BindElab
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__BindElab() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__BindElab}
end

# Language.Reflection.Elab.Prim__Check
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Check() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Check}
end

# Language.Reflection.Elab.Prim__Claim
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Claim() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Claim}
end

# Language.Reflection.Elab.Prim__Compute
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Compute() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Compute}
end

# Language.Reflection.Elab.Prim__Converts
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Converts() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Converts}
end

# Language.Reflection.Elab.Prim__Debug
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Debug() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Debug}
end

# Language.Reflection.Elab.Prim__DeclareDatatype
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__DeclareDatatype() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__DeclareDatatype}
end

# Language.Reflection.Elab.Prim__DeclareType
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__DeclareType() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__DeclareType}
end

# Language.Reflection.Elab.Prim__DefineDatatype
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__DefineDatatype() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__DefineDatatype}
end

# Language.Reflection.Elab.Prim__DefineFunction
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__DefineFunction() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__DefineFunction}
end

# Language.Reflection.Elab.Prim__Env
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Env() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Env}
end

# Language.Reflection.Elab.Prim__Fail
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Fail() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Fail}
end

# Language.Reflection.Elab.Prim__Fill
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Fill() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Fill}
end

# Language.Reflection.Elab.Prim__Fixity
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Fixity() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Fixity}
end

# Language.Reflection.Elab.Prim__Focus
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Focus() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Focus}
end

# Language.Reflection.Elab.Prim__Forall
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Forall() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Forall}
end

# Language.Reflection.Elab.Prim__Gensym
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Gensym() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Gensym}
end

# Language.Reflection.Elab.Prim__Goal
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Goal() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Goal}
end

# Language.Reflection.Elab.Prim__Guess
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Guess() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Guess}
end

# Language.Reflection.Elab.Prim__Holes
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Holes() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Holes}
end

# Prim__IO
def idris_Prim__IO(arg_0) do
  {:idris_Prim__IO, arg_0}
end

# Language.Reflection.Elab.Prim__Intro
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Intro() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Intro}
end

# Language.Reflection.Elab.Prim__IsTCName
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__IsTCName() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__IsTCName}
end

# Language.Reflection.Elab.Prim__LetBind
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__LetBind() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__LetBind}
end

# Language.Reflection.Elab.Prim__LookupArgs
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__LookupArgs() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__LookupArgs}
end

# Language.Reflection.Elab.Prim__LookupDatatype
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__LookupDatatype() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__LookupDatatype}
end

# Language.Reflection.Elab.Prim__LookupFunDefn
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__LookupFunDefn() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__LookupFunDefn}
end

# Language.Reflection.Elab.Prim__LookupTy
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__LookupTy() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__LookupTy}
end

# Language.Reflection.Elab.Prim__MatchApply
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__MatchApply() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__MatchApply}
end

# Language.Reflection.Elab.Prim__Metavar
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Metavar() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Metavar}
end

# Language.Reflection.Elab.Prim__Namespace
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Namespace() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Namespace}
end

# Language.Reflection.Elab.Prim__Normalise
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Normalise() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Normalise}
end

# Language.Reflection.Elab.Prim__PatBind
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__PatBind() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__PatBind}
end

# Language.Reflection.Elab.Prim__PatVar
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__PatVar() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__PatVar}
end

# Language.Reflection.Elab.Prim__PureElab
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__PureElab() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__PureElab}
end

# Language.Reflection.Elab.Prim__RecursiveElab
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__RecursiveElab() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__RecursiveElab}
end

# Language.Reflection.Elab.Prim__ResolveTC
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__ResolveTC() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__ResolveTC}
end

# Language.Reflection.Elab.Prim__Rewrite
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Rewrite() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Rewrite}
end

# Language.Reflection.Elab.Prim__Search
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Search() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Search}
end

# Language.Reflection.Elab.Prim__Solve
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Solve() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Solve}
end

# Language.Reflection.Elab.Prim__SourceLocation
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__SourceLocation() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__SourceLocation}
end

# Language.Reflection.Elab.Prim__Try
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Try() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Try}
end

# Language.Reflection.Elab.Prim__Unfocus
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Unfocus() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Unfocus}
end

# Language.Reflection.Elab.Prim__Whnf
def idris_Language_dot_Reflection_dot_Elab_dot_Prim__Whnf() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_Prim__Whnf}
end

# Language.Reflection.Errors.ProgramLineComment
def idris_Language_dot_Reflection_dot_Errors_dot_ProgramLineComment() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_ProgramLineComment}
end

# Language.Reflection.Errors.ProofSearchFail
def idris_Language_dot_Reflection_dot_Errors_dot_ProofSearchFail() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_ProofSearchFail}
end

# Prelude.Providers.Provide
def idris_Prelude_dot_Providers_dot_Provide() do
  {:idris_Prelude_dot_Providers_dot_Provide}
end

# Prelude.Providers.Provider
def idris_Prelude_dot_Providers_dot_Provider(arg_0) do
  {:idris_Prelude_dot_Providers_dot_Provider, arg_0}
end

# Language.Reflection.Errors.ProviderError
def idris_Language_dot_Reflection_dot_Errors_dot_ProviderError() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_ProviderError}
end

# Ptr
def idris_Ptr() do
  {:idris_Ptr}
end

# Language.Reflection.Quotable
def idris_Language_dot_Reflection_dot_Quotable(arg_0, arg_1) do
  {:idris_Language_dot_Reflection_dot_Quotable, arg_0, arg_1}
end

# Language.Reflection.RApp
def idris_Language_dot_Reflection_dot_RApp() do
  {:idris_Language_dot_Reflection_dot_RApp}
end

# Language.Reflection.RBind
def idris_Language_dot_Reflection_dot_RBind() do
  {:idris_Language_dot_Reflection_dot_RBind}
end

# Language.Reflection.RConstant
def idris_Language_dot_Reflection_dot_RConstant() do
  {:idris_Language_dot_Reflection_dot_RConstant}
end

# Language.Reflection.RType
def idris_Language_dot_Reflection_dot_RType() do
  {:idris_Language_dot_Reflection_dot_RType}
end

# Language.Reflection.RUType
def idris_Language_dot_Reflection_dot_RUType() do
  {:idris_Language_dot_Reflection_dot_RUType}
end

# FFI_C.Raw
def idris_FFI_C_dot_Raw(arg_0) do
  {:idris_FFI_C_dot_Raw, arg_0}
end

# Language.Reflection.Raw
def idris_Language_dot_Reflection_dot_Raw() do
  {:idris_Language_dot_Reflection_dot_Raw}
end

# Language.Reflection.RawPart
def idris_Language_dot_Reflection_dot_RawPart() do
  {:idris_Language_dot_Reflection_dot_RawPart}
end

# Prelude.File.Read
def idris_Prelude_dot_File_dot_Read() do
  {:idris_Prelude_dot_File_dot_Read}
end

# Ownership.Read
def idris_Ownership_dot_Read() do
  {:idris_Ownership_dot_Read}
end

# Prelude.File.ReadAppend
def idris_Prelude_dot_File_dot_ReadAppend() do
  {:idris_Prelude_dot_File_dot_ReadAppend}
end

# Prelude.File.ReadWrite
def idris_Prelude_dot_File_dot_ReadWrite() do
  {:idris_Prelude_dot_File_dot_ReadWrite}
end

# Prelude.File.ReadWriteTruncate
def idris_Prelude_dot_File_dot_ReadWriteTruncate() do
  {:idris_Prelude_dot_File_dot_ReadWriteTruncate}
end

# Language.Reflection.Ref
def idris_Language_dot_Reflection_dot_Ref() do
  {:idris_Language_dot_Reflection_dot_Ref}
end

# Language.Reflection.Refine
def idris_Language_dot_Reflection_dot_Refine() do
  {:idris_Language_dot_Reflection_dot_Refine}
end

# Refl
def idris_Refl() do
  {:idris_Refl}
end

# Language.Reflection.ReflConst
def idris_Language_dot_Reflection_dot_ReflConst(arg_0) do
  {:idris_Language_dot_Reflection_dot_ReflConst, arg_0}
end

# Language.Reflection.Reflect
def idris_Language_dot_Reflection_dot_Reflect() do
  {:idris_Language_dot_Reflection_dot_Reflect}
end

# Language.Reflection.Rewrite
def idris_Language_dot_Reflection_dot_Rewrite() do
  {:idris_Language_dot_Reflection_dot_Rewrite}
end

# Prelude.Either.Right
def idris_Prelude_dot_Either_dot_Right(arg_0) do
  {:idris_Prelude_dot_Either_dot_Right, arg_0}
end

# Prelude.Nat.RightIsNotZero
def idris_Prelude_dot_Nat_dot_RightIsNotZero() do
  {:idris_Prelude_dot_Nat_dot_RightIsNotZero}
end

# Prelude.Nat.S
def idris_Prelude_dot_Nat_dot_S() do
  {:idris_Prelude_dot_Nat_dot_S}
end

# Language.Reflection.SN
def idris_Language_dot_Reflection_dot_SN() do
  {:idris_Language_dot_Reflection_dot_SN}
end

# Language.Reflection.Search
def idris_Language_dot_Reflection_dot_Search() do
  {:idris_Language_dot_Reflection_dot_Search}
end

# Prelude.Algebra.Semigroup
def idris_Prelude_dot_Algebra_dot_Semigroup(arg_0) do
  {:idris_Prelude_dot_Algebra_dot_Semigroup, arg_0}
end

# Language.Reflection.Seq
def idris_Language_dot_Reflection_dot_Seq() do
  {:idris_Language_dot_Reflection_dot_Seq}
end

# Prelude.Show.Show
def idris_Prelude_dot_Show_dot_Show(arg_0) do
  {:idris_Prelude_dot_Show_dot_Show, arg_0}
end

# Prelude.WellFounded.Sized
def idris_Prelude_dot_WellFounded_dot_Sized(arg_0) do
  {:idris_Prelude_dot_WellFounded_dot_Sized, arg_0}
end

# Language.Reflection.Skip
def idris_Language_dot_Reflection_dot_Skip() do
  {:idris_Language_dot_Reflection_dot_Skip}
end

# Language.Reflection.Solve
def idris_Language_dot_Reflection_dot_Solve() do
  {:idris_Language_dot_Reflection_dot_Solve}
end

# Language.Reflection.SourceFC
def idris_Language_dot_Reflection_dot_SourceFC() do
  {:idris_Language_dot_Reflection_dot_SourceFC}
end

# Language.Reflection.SourceLocation
def idris_Language_dot_Reflection_dot_SourceLocation() do
  {:idris_Language_dot_Reflection_dot_SourceLocation}
end

# Language.Reflection.SpecialName
def idris_Language_dot_Reflection_dot_SpecialName() do
  {:idris_Language_dot_Reflection_dot_SpecialName}
end

# Language.Reflection.Str
def idris_Language_dot_Reflection_dot_Str() do
  {:idris_Language_dot_Reflection_dot_Str}
end

# Prelude.Strings.StrCons
def idris_Prelude_dot_Strings_dot_StrCons(arg_0) do
  {:idris_Prelude_dot_Strings_dot_StrCons, arg_0}
end

# Prelude.Strings.StrM
def idris_Prelude_dot_Strings_dot_StrM(arg_0) do
  {:idris_Prelude_dot_Strings_dot_StrM, arg_0}
end

# Prelude.Strings.StrNil
def idris_Prelude_dot_Strings_dot_StrNil() do
  {:idris_Prelude_dot_Strings_dot_StrNil}
end

# Language.Reflection.StrType
def idris_Language_dot_Reflection_dot_StrType() do
  {:idris_Language_dot_Reflection_dot_StrType}
end

# Prelude.Stream.Stream
def idris_Prelude_dot_Stream_dot_Stream(arg_0) do
  {:idris_Prelude_dot_Stream_dot_Stream, arg_0}
end

# Prelude.Strings.StringBuffer
def idris_Prelude_dot_Strings_dot_StringBuffer() do
  {:idris_Prelude_dot_Strings_dot_StringBuffer}
end

# Language.Reflection.SubReport
def idris_Language_dot_Reflection_dot_SubReport() do
  {:idris_Language_dot_Reflection_dot_SubReport}
end

# Prelude.Pairs.Subset
def idris_Prelude_dot_Pairs_dot_Subset(arg_0, arg_1) do
  {:idris_Prelude_dot_Pairs_dot_Subset, arg_0, arg_1}
end

# Symbol_
def idris_Symbol_(arg_0) do
  {:idris_Symbol_, arg_0}
end

# Language.Reflection.TCon
def idris_Language_dot_Reflection_dot_TCon() do
  {:idris_Language_dot_Reflection_dot_TCon}
end

# Language.Reflection.TConst
def idris_Language_dot_Reflection_dot_TConst() do
  {:idris_Language_dot_Reflection_dot_TConst}
end

# Language.Reflection.TT
def idris_Language_dot_Reflection_dot_TT() do
  {:idris_Language_dot_Reflection_dot_TT}
end

# Language.Reflection.TTName
def idris_Language_dot_Reflection_dot_TTName() do
  {:idris_Language_dot_Reflection_dot_TTName}
end

# Language.Reflection.TTUExp
def idris_Language_dot_Reflection_dot_TTUExp() do
  {:idris_Language_dot_Reflection_dot_TTUExp}
end

# Language.Reflection.TType
def idris_Language_dot_Reflection_dot_TType() do
  {:idris_Language_dot_Reflection_dot_TType}
end

# Language.Reflection.Tactic
def idris_Language_dot_Reflection_dot_Tactic() do
  {:idris_Language_dot_Reflection_dot_Tactic}
end

# Language.Reflection.TermPart
def idris_Language_dot_Reflection_dot_TermPart() do
  {:idris_Language_dot_Reflection_dot_TermPart}
end

# Language.Reflection.TextPart
def idris_Language_dot_Reflection_dot_TextPart() do
  {:idris_Language_dot_Reflection_dot_TextPart}
end

# TheWorld
def idris_TheWorld(arg_0) do
  {:idris_TheWorld, arg_0}
end

# Language.Reflection.TheWorld
def idris_Language_dot_Reflection_dot_TheWorld() do
  {:idris_Language_dot_Reflection_dot_TheWorld}
end

# Language.Reflection.Errors.TooManyArguments
def idris_Language_dot_Reflection_dot_Errors_dot_TooManyArguments() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_TooManyArguments}
end

# Prelude.Traversable.Traversable
def idris_Prelude_dot_Traversable_dot_Traversable(arg_0) do
  {:idris_Prelude_dot_Traversable_dot_Traversable, arg_0}
end

# Language.Reflection.Trivial
def idris_Language_dot_Reflection_dot_Trivial() do
  {:idris_Language_dot_Reflection_dot_Trivial}
end

# Prelude.Bool.True
def idris_Prelude_dot_Bool_dot_True() do
  {:idris_Prelude_dot_Bool_dot_True}
end

# Language.Reflection.Try
def idris_Language_dot_Reflection_dot_Try() do
  {:idris_Language_dot_Reflection_dot_Try}
end

# Language.Reflection.Elab.TyConArg
def idris_Language_dot_Reflection_dot_Elab_dot_TyConArg() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_TyConArg}
end

# Language.Reflection.Elab.TyConIndex
def idris_Language_dot_Reflection_dot_Elab_dot_TyConIndex() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_TyConIndex}
end

# Language.Reflection.Elab.TyConParameter
def idris_Language_dot_Reflection_dot_Elab_dot_TyConParameter() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_TyConParameter}
end

# Language.Reflection.Elab.TyDecl
def idris_Language_dot_Reflection_dot_Elab_dot_TyDecl() do
  {:idris_Language_dot_Reflection_dot_Elab_dot_TyDecl}
end

# Language.Reflection.UN
def idris_Language_dot_Reflection_dot_UN() do
  {:idris_Language_dot_Reflection_dot_UN}
end

# Builtins.UPair
def idris_Builtins_dot_UPair(arg_0, arg_1) do
  {:idris_Builtins_dot_UPair, arg_0, arg_1}
end

# Language.Reflection.UType
def idris_Language_dot_Reflection_dot_UType() do
  {:idris_Language_dot_Reflection_dot_UType}
end

# Language.Reflection.UVal
def idris_Language_dot_Reflection_dot_UVal() do
  {:idris_Language_dot_Reflection_dot_UVal}
end

# Language.Reflection.UVar
def idris_Language_dot_Reflection_dot_UVar() do
  {:idris_Language_dot_Reflection_dot_UVar}
end

# Language.Reflection.Unfocus
def idris_Language_dot_Reflection_dot_Unfocus() do
  {:idris_Language_dot_Reflection_dot_Unfocus}
end

# Language.Reflection.Errors.UnifyScope
def idris_Language_dot_Reflection_dot_Errors_dot_UnifyScope() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_UnifyScope}
end

# Prelude.Uninhabited.Uninhabited
def idris_Prelude_dot_Uninhabited_dot_Uninhabited(arg_0) do
  {:idris_Prelude_dot_Uninhabited_dot_Uninhabited, arg_0}
end

# Language.Reflection.UniqueType
def idris_Language_dot_Reflection_dot_UniqueType() do
  {:idris_Language_dot_Reflection_dot_UniqueType}
end

# Unit
def idris_Unit() do
  {:idris_Unit}
end

# Language.Reflection.Universe
def idris_Language_dot_Reflection_dot_Universe() do
  {:idris_Language_dot_Reflection_dot_Universe}
end

# Language.Reflection.Errors.UniverseError
def idris_Language_dot_Reflection_dot_Errors_dot_UniverseError() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_UniverseError}
end

# Language.Reflection.Errors.UnknownImplicit
def idris_Language_dot_Reflection_dot_Errors_dot_UnknownImplicit() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_UnknownImplicit}
end

# Prelude.Show.User
def idris_Prelude_dot_Show_dot_User(arg_0) do
  {:idris_Prelude_dot_Show_dot_User, arg_0}
end

# Language.Reflection.V
def idris_Language_dot_Reflection_dot_V() do
  {:idris_Language_dot_Reflection_dot_V}
end

# Language.Reflection.Var
def idris_Language_dot_Reflection_dot_Var() do
  {:idris_Language_dot_Reflection_dot_Var}
end

# Void
def idris_Void() do
  {:idris_Void}
end

# Language.Reflection.VoidType
def idris_Language_dot_Reflection_dot_VoidType() do
  {:idris_Language_dot_Reflection_dot_VoidType}
end

# Prelude.WellFounded.WellFounded
def idris_Prelude_dot_WellFounded_dot_WellFounded(arg_0, arg_1) do
  {:idris_Prelude_dot_WellFounded_dot_WellFounded, arg_0, arg_1}
end

# Language.Reflection.WhereN
def idris_Language_dot_Reflection_dot_WhereN() do
  {:idris_Language_dot_Reflection_dot_WhereN}
end

# Language.Reflection.Errors.WithFnType
def idris_Language_dot_Reflection_dot_Errors_dot_WithFnType() do
  {:idris_Language_dot_Reflection_dot_Errors_dot_WithFnType}
end

# Language.Reflection.WithN
def idris_Language_dot_Reflection_dot_WithN() do
  {:idris_Language_dot_Reflection_dot_WithN}
end

# World
def idris_World() do
  {:idris_World}
end

# Language.Reflection.WorldType
def idris_Language_dot_Reflection_dot_WorldType() do
  {:idris_Language_dot_Reflection_dot_WorldType}
end

# Prelude.File.WriteTruncate
def idris_Prelude_dot_File_dot_WriteTruncate() do
  {:idris_Prelude_dot_File_dot_WriteTruncate}
end

# Prelude.Basics.Yes
def idris_Prelude_dot_Basics_dot_Yes() do
  {:idris_Prelude_dot_Basics_dot_Yes}
end

# Prelude.Nat.Z
def idris_Prelude_dot_Nat_dot_Z() do
  {:idris_Prelude_dot_Nat_dot_Z}
end

# assert_unreachable
def idris_assert_unreachable() do
  :idris_nothing
end

# call__IO
def idris_call__IO(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_) do
  idris__lc_e_2_rc_(:idris_nothing)
end

# Main.fifi
def idris_Main_dot_fifi(idris__lc_e_0_rc_) do
  case (idris__lc_e_0_rc_) do
    _ ->
      "THIS IS NOT IMPLEMENTED!"
    _ ->
      idris_Main_dot__lc_fifi_1_rc_()
    
  end
end

# Main.{fifi_1}
def idris_Main_dot__lc_fifi_1_rc_(idris__lc_in_1_rc_) do
  {:idris_Main_dot_FooFoo, 4, idris__lc_in_1_rc_}
end

# Main.{fifi_0}
def idris_Main_dot__lc_fifi_0_rc_(idris__lc_in_0_rc_) do
  {:idris_Main_dot_FooFoo, 3, idris__lc_in_0_rc_}
end

# Main.funfun
def idris_Main_dot_funfun(idris__lc_e_0_rc_) do
  case (idris__lc_e_0_rc_) do
    {:idris_Main_dot_FooBar, idris__lc_in_0_rc_, idris__lc_in_1_rc_} ->
      {:idris_Main_dot_FooBar, idris__lc_in_0_rc_ + idris__lc_in_0_rc_, idris_Main_dot_funfun(idris__lc_in_1_rc_)}
    
    {:idris_Main_dot_FooFoo, idris__lc_in_2_rc_, idris__lc_in_3_rc_} ->
      {:idris_Main_dot_FooFoo, idris__lc_in_2_rc_ + idris__lc_in_2_rc_, idris__lc_in_3_rc_}
    
  end
end

# idris_crash
def idris_idris_crash() do
  :idris_nothing
end

# Prelude.Bool.ifThenElse
def idris_Prelude_dot_Bool_dot_ifThenElse(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_, idris__lc_e_3_rc_) do
  case (idris__lc_e_1_rc_) do
    {:idris_Prelude_dot_Bool_dot_False} ->
      IdrisRts.force(idris__lc_e_3_rc_)
    
    {:idris_Prelude_dot_Bool_dot_True} ->
      IdrisRts.force(idris__lc_e_2_rc_)
    
  end
end

# Prelude.Interfaces.intToBool
def idris_Prelude_dot_Interfaces_dot_intToBool(idris__lc_e_0_rc_) do
  case (idris__lc_e_0_rc_) do
    _ ->
      "THIS IS NOT IMPLEMENTED!"
    _ ->
      {:idris_Prelude_dot_Bool_dot_True}
    
  end
end

# io_bind
def idris_io_bind(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_, idris__lc_e_3_rc_, idris__lc_e_4_rc_, idris_w) do
  idris__lc_io_bind_2_rc_(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_, idris__lc_e_3_rc_, idris__lc_e_4_rc_, idris_w, idris__lc_e_3_rc_(idris_w))
end

# {io_bind_2}
def idris__lc_io_bind_2_rc_(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_, idris__lc_e_3_rc_, idris__lc_e_4_rc_, idris_w) do
  idris__lc_io_bind_1_rc_(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_, idris__lc_e_3_rc_, idris__lc_e_4_rc_, idris_w)
end

# {io_bind_1}
def idris__lc_io_bind_1_rc_(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_, idris__lc_e_3_rc_, idris__lc_e_4_rc_, idris_w, idris__lc_in_0_rc_) do
  idris__lc_io_bind_0_rc_(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_, idris__lc_e_3_rc_, idris__lc_e_4_rc_, idris_w, idris__lc_in_0_rc_, idris_w)
end

# {io_bind_0}
def idris__lc_io_bind_0_rc_(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_, idris__lc_e_3_rc_, idris__lc_e_4_rc_, idris_w, idris__lc_in_0_rc_) do
  idris__lc_e_4_rc_(idris__lc_in_0_rc_)
end

# io_pure
def idris_io_pure(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_, idris_w) do
  idris__lc_e_2_rc_
end

# Main.main
def idris_Main_dot_main() do
  idris_io_bind(:idris_nothing, :idris_nothing, :idris_nothing, idris_Prelude_dot_Interactive_dot_putStr_39_(:idris_nothing, idris_Main_dot_show(idris_Main_dot_funfun({:idris_Main_dot_FooBar, 2, {:idris_Main_dot_FooFoo, 3, "yoyoyo"}})) <> "\n"), idris_Main_dot__lc_main_0_rc_())
end

# Main.{main_0}
def idris_Main_dot__lc_main_0_rc_(idris__lc_in_0_rc_) do
  idris_Prelude_dot_Interactive_dot_putStr_39_(:idris_nothing, idris_Main_dot_show(idris_Main_dot_fifi("y", "yolo")) <> "\n")
end

# mkForeignPrim
def idris_mkForeignPrim() do
  :idris_nothing
end

# Prelude.Bool.not
def idris_Prelude_dot_Bool_dot_not(idris__lc_e_0_rc_) do
  case (idris__lc_e_0_rc_) do
    {:idris_Prelude_dot_Bool_dot_False} ->
      {:idris_Prelude_dot_Bool_dot_True}
    
    {:idris_Prelude_dot_Bool_dot_True} ->
      {:idris_Prelude_dot_Bool_dot_False}
    
  end
end

# Prelude.Show.precCon
def idris_Prelude_dot_Show_dot_precCon(idris__lc_e_0_rc_) do
  case (idris__lc_e_0_rc_) do
    {:idris_Prelude_dot_Show_dot_App} ->
      6
    
    {:idris_Prelude_dot_Show_dot_Backtick} ->
      3
    
    {:idris_Prelude_dot_Show_dot_Dollar} ->
      2
    
    {:idris_Prelude_dot_Show_dot_Eq} ->
      1
    
    {:idris_Prelude_dot_Show_dot_Open} ->
      0
    
    {:idris_Prelude_dot_Show_dot_PrefixMinus} ->
      5
    
    {:idris_Prelude_dot_Show_dot_User, idris__lc_in_0_rc_} ->
      4
    
  end
end

# Prelude.Show.primNumShow
def idris_Prelude_dot_Show_dot_primNumShow(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_, idris__lc_e_3_rc_) do
  idris__lc_in_0_rc_ = idris__lc_e_1_rc_(idris__lc_e_3_rc_)
  case (case (idris_Prelude_dot_Interfaces_dot_Prelude_dot_Show_dot_Prec_32_implementation_32_of_32_Prelude_dot_Interfaces_dot_Ord_44__32_method_32__62__61_(idris__lc_e_2_rc_, {:idris_Prelude_dot_Show_dot_PrefixMinus})) do
    {:idris_Prelude_dot_Bool_dot_False} ->
      {:idris_Prelude_dot_Bool_dot_False}
    
    {:idris_Prelude_dot_Bool_dot_True} ->
      IdrisRts.force({:idris-lazy, fn() ->
        idris_Prelude_dot_Show_dot__lc_primNumShow_2_rc_(idris__lc_in_0_rc_, idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_, idris__lc_e_3_rc_)
      end})
    
  end
  ) do
    {:idris_Prelude_dot_Bool_dot_False} ->
      idris__lc_in_0_rc_
    
    {:idris_Prelude_dot_Bool_dot_True} ->
      "(" <> idris__lc_in_0_rc_ <> ")"
    
  end
end

# Prelude.Show.{primNumShow_2}
def idris_Prelude_dot_Show_dot__lc_primNumShow_2_rc_(idris__lc_in_0_rc_, idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_, idris__lc_e_3_rc_) do
  case (idris_Prelude_dot_Strings_dot_strM(idris__lc_in_0_rc_)) do
    {:idris_Prelude_dot_Strings_dot_StrCons, idris__lc_in_2_rc_} ->
      idris_Prelude_dot_Show_dot__lc_primNumShow_1_rc_(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_, idris__lc_e_3_rc_, idris__lc_in_0_rc_, idris__lc_in_2_rc_, idris__lc_in_2_rc_)
    
    {:idris_Prelude_dot_Strings_dot_StrNil} ->
      {:idris_Prelude_dot_Bool_dot_False}
    
  end
end

# Prelude.Show.{primNumShow_1}
def idris_Prelude_dot_Show_dot__lc_primNumShow_1_rc_(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_, idris__lc_e_3_rc_, idris__lc_in_0_rc_, idris__lc_in_2_rc_) do
  idris_Prelude_dot_Show_dot__lc_primNumShow_0_rc_()
end

# Prelude.Show.{primNumShow_0}
def idris_Prelude_dot_Show_dot__lc_primNumShow_0_rc_(idris__lc_in_1_rc_) do
  case (idris__lc_in_1_rc_ == '-') do
    _ ->
      "THIS IS NOT IMPLEMENTED!"
    _ ->
      {:idris_Prelude_dot_Bool_dot_True}
    
  end
end

# prim__addInt
def idris_prim__addInt(idris__lc_op_0_rc_, idris__lc_op_1_rc_) do
  idris__lc_op_0_rc_ + idris__lc_op_1_rc_
end

# prim__asPtr
def idris_prim__asPtr(idris__lc_op_0_rc_) do
  idris__lc_op_0_rc_
end

# prim__concat
def idris_prim__concat(idris__lc_op_0_rc_, idris__lc_op_1_rc_) do
  idris__lc_op_0_rc_ <> idris__lc_op_1_rc_
end

# prim__eqBigInt
def idris_prim__eqBigInt(idris__lc_op_0_rc_, idris__lc_op_1_rc_) do
  idris__lc_op_0_rc_ == idris__lc_op_1_rc_
end

# prim__eqChar
def idris_prim__eqChar(idris__lc_op_0_rc_, idris__lc_op_1_rc_) do
  idris__lc_op_0_rc_ == idris__lc_op_1_rc_
end

# prim__eqManagedPtr
def idris_prim__eqManagedPtr(idris__lc_op_0_rc_, idris__lc_op_1_rc_) do
  :idris-error
end

# prim__eqPtr
def idris_prim__eqPtr(idris__lc_op_0_rc_, idris__lc_op_1_rc_) do
  :idris-error
end

# prim__eqString
def idris_prim__eqString(idris__lc_op_0_rc_, idris__lc_op_1_rc_) do
  idris__lc_op_0_rc_ == idris__lc_op_1_rc_
end

# prim__null
def idris_prim__null() do
  :idris-error
end

# prim__peek16
def idris_prim__peek16(idris__lc_op_0_rc_, idris__lc_op_1_rc_, idris__lc_op_2_rc_) do
  :idris-error
end

# prim__peek32
def idris_prim__peek32(idris__lc_op_0_rc_, idris__lc_op_1_rc_, idris__lc_op_2_rc_) do
  :idris-error
end

# prim__peek64
def idris_prim__peek64(idris__lc_op_0_rc_, idris__lc_op_1_rc_, idris__lc_op_2_rc_) do
  :idris-error
end

# prim__peek8
def idris_prim__peek8(idris__lc_op_0_rc_, idris__lc_op_1_rc_, idris__lc_op_2_rc_) do
  :idris-error
end

# prim__peekDouble
def idris_prim__peekDouble(idris__lc_op_0_rc_, idris__lc_op_1_rc_, idris__lc_op_2_rc_) do
  :idris-error
end

# prim__peekPtr
def idris_prim__peekPtr(idris__lc_op_0_rc_, idris__lc_op_1_rc_, idris__lc_op_2_rc_) do
  :idris-error
end

# prim__peekSingle
def idris_prim__peekSingle(idris__lc_op_0_rc_, idris__lc_op_1_rc_, idris__lc_op_2_rc_) do
  :idris-error
end

# prim__poke16
def idris_prim__poke16(idris__lc_op_0_rc_, idris__lc_op_1_rc_, idris__lc_op_2_rc_, idris__lc_op_3_rc_) do
  :idris-error
end

# prim__poke32
def idris_prim__poke32(idris__lc_op_0_rc_, idris__lc_op_1_rc_, idris__lc_op_2_rc_, idris__lc_op_3_rc_) do
  :idris-error
end

# prim__poke64
def idris_prim__poke64(idris__lc_op_0_rc_, idris__lc_op_1_rc_, idris__lc_op_2_rc_, idris__lc_op_3_rc_) do
  :idris-error
end

# prim__poke8
def idris_prim__poke8(idris__lc_op_0_rc_, idris__lc_op_1_rc_, idris__lc_op_2_rc_, idris__lc_op_3_rc_) do
  :idris-error
end

# prim__pokeDouble
def idris_prim__pokeDouble(idris__lc_op_0_rc_, idris__lc_op_1_rc_, idris__lc_op_2_rc_, idris__lc_op_3_rc_) do
  :idris-error
end

# prim__pokePtr
def idris_prim__pokePtr(idris__lc_op_0_rc_, idris__lc_op_1_rc_, idris__lc_op_2_rc_, idris__lc_op_3_rc_) do
  :idris-error
end

# prim__pokeSingle
def idris_prim__pokeSingle(idris__lc_op_0_rc_, idris__lc_op_1_rc_, idris__lc_op_2_rc_, idris__lc_op_3_rc_) do
  :idris-error
end

# prim__ptrOffset
def idris_prim__ptrOffset(idris__lc_op_0_rc_, idris__lc_op_1_rc_) do
  :idris-error
end

# prim__readChars
def idris_prim__readChars(idris__lc_op_0_rc_, idris__lc_op_1_rc_, idris__lc_op_2_rc_) do
  :idris-error
end

# prim__readFile
def idris_prim__readFile(idris__lc_op_0_rc_, idris__lc_op_1_rc_) do
  :idris-error
end

# prim__registerPtr
def idris_prim__registerPtr(idris__lc_op_0_rc_, idris__lc_op_1_rc_) do
  :idris-error
end

# prim__sizeofPtr
def idris_prim__sizeofPtr() do
  :idris-error
end

# prim__sltBigInt
def idris_prim__sltBigInt(idris__lc_op_0_rc_, idris__lc_op_1_rc_) do
  :idris-error
end

# prim__stderr
def idris_prim__stderr() do
  :idris-error
end

# prim__stdin
def idris_prim__stdin() do
  :idris-error
end

# prim__stdout
def idris_prim__stdout() do
  :idris-error
end

# prim__strHead
def idris_prim__strHead(idris__lc_op_0_rc_) do
  :idris-error
end

# prim__toStrInt
def idris_prim__toStrInt(idris__lc_op_0_rc_) do
  :idris-error
end

# prim__vm
def idris_prim__vm(idris__lc_op_0_rc_) do
  idris__lc_op_0_rc_
end

# prim__writeFile
def idris_prim__writeFile(idris__lc_op_0_rc_, idris__lc_op_1_rc_, idris__lc_op_2_rc_) do
  :idris-error
end

# prim__writeString
def idris_prim__writeString(idris__lc_op_0_rc_, idris__lc_op_1_rc_) do
  :idris-error
end

# prim_io_bind
def idris_prim_io_bind(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_, idris__lc_e_3_rc_) do
  idris__lc_e_3_rc_(idris__lc_e_2_rc_)
end

# prim_write
def idris_prim_write(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris_w) do
  :idris-error
end

# Prelude.Interactive.putStr'
def idris_Prelude_dot_Interactive_dot_putStr_39_(idris__lc_e_0_rc_, idris__lc_e_1_rc_) do
  idris_io_bind(:idris_nothing, :idris_nothing, :idris_nothing, idris_prim_write(:idris_nothing, idris__lc_e_1_rc_), idris_Prelude_dot_Interactive_dot__lc_putStr_39__0_rc_())
end

# Prelude.Interactive.{putStr'_0}
def idris_Prelude_dot_Interactive_dot__lc_putStr_39__0_rc_(idris__lc_in_0_rc_) do
  idris_io_pure(:idris_nothing, :idris_nothing, {:idris_MkUnit})
end

# run__IO
def idris_run__IO(idris__lc_e_0_rc_, idris__lc_e_1_rc_) do
  idris__lc_e_1_rc_(:idris_nothing)
end

# Main.show
def idris_Main_dot_show(idris__lc_e_0_rc_) do
  case (idris__lc_e_0_rc_) do
    {:idris_Main_dot_FooBar, idris__lc_in_0_rc_, idris__lc_in_1_rc_} ->
      "FOOBAR: " <> idris_Prelude_dot_Show_dot_primNumShow(:idris_nothing, idris_prim__toStrInt, {:idris_Prelude_dot_Show_dot_Open}, idris__lc_in_0_rc_) <> " - " <> idris_Main_dot_show(idris__lc_in_1_rc_)
    
    {:idris_Main_dot_FooFoo, idris__lc_in_2_rc_, idris__lc_in_3_rc_} ->
      "FOOFOO: " <> idris_Prelude_dot_Show_dot_primNumShow(:idris_nothing, idris_prim__toStrInt, {:idris_Prelude_dot_Show_dot_Open}, idris__lc_in_2_rc_) <> " - " <> idris__lc_in_3_rc_
    
  end
end

# Prelude.Show.showParens
def idris_Prelude_dot_Show_dot_showParens(idris__lc_e_0_rc_, idris__lc_e_1_rc_) do
  case (idris__lc_e_0_rc_) do
    {:idris_Prelude_dot_Bool_dot_False} ->
      idris__lc_e_1_rc_
    
    {:idris_Prelude_dot_Bool_dot_True} ->
      "(" <> idris__lc_e_1_rc_ <> ")"
    
  end
end

# Prelude.Strings.strM
def idris_Prelude_dot_Strings_dot_strM(idris__lc_e_0_rc_) do
  case (idris_Decidable_dot_Equality_dot_Decidable_dot_Equality_dot_Bool_32_implementation_32_of_32_Decidable_dot_Equality_dot_DecEq_44__32_method_32_decEq(case (case (idris__lc_e_0_rc_ == "") do
    _ ->
      "THIS IS NOT IMPLEMENTED!"
    _ ->
      {:idris_Prelude_dot_Bool_dot_True}
    
  end
  ) do
    {:idris_Prelude_dot_Bool_dot_False} ->
      {:idris_Prelude_dot_Bool_dot_True}
    
    {:idris_Prelude_dot_Bool_dot_True} ->
      {:idris_Prelude_dot_Bool_dot_False}
    
  end
  , {:idris_Prelude_dot_Bool_dot_True})) do
    {:idris_Prelude_dot_Basics_dot_No} ->
      {:idris_Prelude_dot_Strings_dot_StrNil}
    
    {:idris_Prelude_dot_Basics_dot_Yes} ->
      {:idris_Prelude_dot_Strings_dot_StrCons, :idris-error}
    
  end
end

# unsafePerformPrimIO
def idris_unsafePerformPrimIO() do
  :idris_nothing
end

# world
def idris_world(idris__lc_e_0_rc_) do
  idris__lc_e_0_rc_
end

# Prelude.Bool.||
def idris_Prelude_dot_Bool_dot__124__124_(idris__lc_e_0_rc_, idris__lc_e_1_rc_) do
  case (idris__lc_e_0_rc_) do
    {:idris_Prelude_dot_Bool_dot_False} ->
      IdrisRts.force(idris__lc_e_1_rc_)
    
    {:idris_Prelude_dot_Bool_dot_True} ->
      {:idris_Prelude_dot_Bool_dot_True}
    
  end
end

# {__Infer_0}
def idris__lc___Infer_0_rc_() do
  {:idris__lc___Infer_0_rc_}
end

# {__infer_0}
def idris__lc___infer_0_rc_() do
  {:idris__lc___infer_0_rc_}
end

# Decidable.Equality.Decidable.Equality.Char implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
def idris_Decidable_dot_Equality_dot_Decidable_dot_Equality_dot_Char_32_implementation_32_of_32_Decidable_dot_Equality_dot_DecEq_44__32_method_32_decEq_44__32_primitiveNotEq() do
  :idris_nothing
end

# Decidable.Equality.Decidable.Equality.Int implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
def idris_Decidable_dot_Equality_dot_Decidable_dot_Equality_dot_Int_32_implementation_32_of_32_Decidable_dot_Equality_dot_DecEq_44__32_method_32_decEq_44__32_primitiveNotEq() do
  :idris_nothing
end

# Decidable.Equality.Decidable.Equality.Integer implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
def idris_Decidable_dot_Equality_dot_Decidable_dot_Equality_dot_Integer_32_implementation_32_of_32_Decidable_dot_Equality_dot_DecEq_44__32_method_32_decEq_44__32_primitiveNotEq() do
  :idris_nothing
end

# Decidable.Equality.Decidable.Equality.ManagedPtr implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
def idris_Decidable_dot_Equality_dot_Decidable_dot_Equality_dot_ManagedPtr_32_implementation_32_of_32_Decidable_dot_Equality_dot_DecEq_44__32_method_32_decEq_44__32_primitiveNotEq() do
  :idris_nothing
end

# Decidable.Equality.Decidable.Equality.Ptr implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
def idris_Decidable_dot_Equality_dot_Decidable_dot_Equality_dot_Ptr_32_implementation_32_of_32_Decidable_dot_Equality_dot_DecEq_44__32_method_32_decEq_44__32_primitiveNotEq() do
  :idris_nothing
end

# Decidable.Equality.Decidable.Equality.String implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
def idris_Decidable_dot_Equality_dot_Decidable_dot_Equality_dot_String_32_implementation_32_of_32_Decidable_dot_Equality_dot_DecEq_44__32_method_32_decEq_44__32_primitiveNotEq() do
  :idris_nothing
end

# Decidable.Equality.Decidable.Equality.Bool implementation of Decidable.Equality.DecEq, method decEq
def idris_Decidable_dot_Equality_dot_Decidable_dot_Equality_dot_Bool_32_implementation_32_of_32_Decidable_dot_Equality_dot_DecEq_44__32_method_32_decEq(idris__lc_e_0_rc_, idris__lc_e_1_rc_) do
  case (idris__lc_e_1_rc_) do
    {:idris_Prelude_dot_Bool_dot_False} ->
      case (idris__lc_e_0_rc_) do
        {:idris_Prelude_dot_Bool_dot_False} ->
          {:idris_Prelude_dot_Basics_dot_Yes}
        
        {:idris_Prelude_dot_Bool_dot_True} ->
          {:idris_Prelude_dot_Basics_dot_No}
        
      end
    
    {:idris_Prelude_dot_Bool_dot_True} ->
      case (idris__lc_e_0_rc_) do
        {:idris_Prelude_dot_Bool_dot_False} ->
          {:idris_Prelude_dot_Basics_dot_No}
        
        {:idris_Prelude_dot_Bool_dot_True} ->
          {:idris_Prelude_dot_Basics_dot_Yes}
        
      end
    
  end
end

# Prelude.Interfaces.Prelude.Nat.Nat implementation of Prelude.Interfaces.Eq, method ==
def idris_Prelude_dot_Interfaces_dot_Prelude_dot_Nat_dot_Nat_32_implementation_32_of_32_Prelude_dot_Interfaces_dot_Eq_44__32_method_32__61__61_(idris__lc_e_0_rc_, idris__lc_e_1_rc_) do
  case (idris__lc_e_1_rc_) do
    _ ->
      "THIS IS NOT IMPLEMENTED!"
    _ ->
      idris__lc_in_0_rc_ = :idris-error
      case (idris__lc_e_0_rc_) do
        _ ->
          "THIS IS NOT IMPLEMENTED!"
        _ ->
          idris__lc_in_1_rc_ = :idris-error
          idris_Prelude_dot_Interfaces_dot_Prelude_dot_Nat_dot_Nat_32_implementation_32_of_32_Prelude_dot_Interfaces_dot_Eq_44__32_method_32__61__61_(idris__lc_in_1_rc_, idris__lc_in_0_rc_)
        
      end
    
    _ ->
      {:idris_Prelude_dot_Bool_dot_False}
    
  end
end

# Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Eq, method ==
def idris_Prelude_dot_Interfaces_dot_Prelude_dot_Show_dot_Prec_32_implementation_32_of_32_Prelude_dot_Interfaces_dot_Eq_44__32_method_32__61__61_(idris__lc_e_0_rc_, idris__lc_e_1_rc_) do
  case (idris__lc_e_1_rc_) do
    {:idris_Prelude_dot_Show_dot_User, idris__lc_in_0_rc_} ->
      case (idris__lc_e_0_rc_) do
        {:idris_Prelude_dot_Show_dot_User, idris__lc_in_1_rc_} ->
          idris_Prelude_dot_Interfaces_dot_Prelude_dot_Nat_dot_Nat_32_implementation_32_of_32_Prelude_dot_Interfaces_dot_Eq_44__32_method_32__61__61_(idris__lc_in_1_rc_, idris__lc_in_0_rc_)
        
        _ ->
          case (idris_Prelude_dot_Show_dot_precCon(idris__lc_e_0_rc_) == idris_Prelude_dot_Show_dot_precCon(idris__lc_e_1_rc_)) do
            _ ->
              "THIS IS NOT IMPLEMENTED!"
            _ ->
              {:idris_Prelude_dot_Bool_dot_True}
            
          end
        
      end
    
    _ ->
      case (idris_Prelude_dot_Show_dot_precCon(idris__lc_e_0_rc_) == idris_Prelude_dot_Show_dot_precCon(idris__lc_e_1_rc_)) do
        _ ->
          "THIS IS NOT IMPLEMENTED!"
        _ ->
          {:idris_Prelude_dot_Bool_dot_True}
        
      end
    
  end
end

# Prelude.Interfaces.Prelude.Interfaces.Integer implementation of Prelude.Interfaces.Ord, method compare
def idris_Prelude_dot_Interfaces_dot_Prelude_dot_Interfaces_dot_Integer_32_implementation_32_of_32_Prelude_dot_Interfaces_dot_Ord_44__32_method_32_compare(idris__lc_e_0_rc_, idris__lc_e_1_rc_) do
  case (case (idris__lc_e_0_rc_ == idris__lc_e_1_rc_) do
    _ ->
      "THIS IS NOT IMPLEMENTED!"
    _ ->
      {:idris_Prelude_dot_Bool_dot_True}
    
  end
  ) do
    {:idris_Prelude_dot_Bool_dot_False} ->
      case (case (:idris-error) do
        _ ->
          "THIS IS NOT IMPLEMENTED!"
        _ ->
          {:idris_Prelude_dot_Bool_dot_True}
        
      end
      ) do
        {:idris_Prelude_dot_Bool_dot_False} ->
          {:idris_Prelude_dot_Interfaces_dot_GT}
        
        {:idris_Prelude_dot_Bool_dot_True} ->
          {:idris_Prelude_dot_Interfaces_dot_LT}
        
      end
    
    {:idris_Prelude_dot_Bool_dot_True} ->
      {:idris_Prelude_dot_Interfaces_dot_EQ}
    
  end
end

# Prelude.Interfaces.Prelude.Nat.Nat implementation of Prelude.Interfaces.Ord, method compare
def idris_Prelude_dot_Interfaces_dot_Prelude_dot_Nat_dot_Nat_32_implementation_32_of_32_Prelude_dot_Interfaces_dot_Ord_44__32_method_32_compare(idris__lc_e_0_rc_, idris__lc_e_1_rc_) do
  case (idris__lc_e_1_rc_) do
    _ ->
      "THIS IS NOT IMPLEMENTED!"
    _ ->
      idris__lc_in_1_rc_ = :idris-error
      case (idris__lc_e_0_rc_) do
        _ ->
          "THIS IS NOT IMPLEMENTED!"
        _ ->
          idris__lc_in_2_rc_ = :idris-error
          idris_Prelude_dot_Interfaces_dot_Prelude_dot_Nat_dot_Nat_32_implementation_32_of_32_Prelude_dot_Interfaces_dot_Ord_44__32_method_32_compare(idris__lc_in_2_rc_, idris__lc_in_1_rc_)
        
      end
    
  end
end

# Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method >=
def idris_Prelude_dot_Interfaces_dot_Prelude_dot_Show_dot_Prec_32_implementation_32_of_32_Prelude_dot_Interfaces_dot_Ord_44__32_method_32__62__61_(idris__lc_e_0_rc_, idris__lc_e_1_rc_) do
  case (case (idris_Prelude_dot_Interfaces_dot_Prelude_dot_Show_dot_Prec_32_implementation_32_of_32_Prelude_dot_Interfaces_dot_Ord_44__32_method_32_compare(idris__lc_e_0_rc_, idris__lc_e_1_rc_)) do
    {:idris_Prelude_dot_Interfaces_dot_GT} ->
      {:idris_Prelude_dot_Bool_dot_True}
    
    _ ->
      {:idris_Prelude_dot_Bool_dot_False}
    
  end
  ) do
    {:idris_Prelude_dot_Bool_dot_False} ->
      IdrisRts.force({:idris-lazy, fn() ->
        idris_Prelude_dot_Interfaces_dot__lc_Prelude_dot_Show_dot__64_Prelude_dot_Interfaces_dot_Ord_36_Prec_58__33__62__61__58_0_lam_0_rc_(idris__lc_e_0_rc_, idris__lc_e_1_rc_)
      end})
    
    {:idris_Prelude_dot_Bool_dot_True} ->
      {:idris_Prelude_dot_Bool_dot_True}
    
  end
end

# Prelude.Interfaces.{Prelude.Show.@Prelude.Interfaces.Ord$Prec:!>=:0_lam_0}
def idris_Prelude_dot_Interfaces_dot__lc_Prelude_dot_Show_dot__64_Prelude_dot_Interfaces_dot_Ord_36_Prec_58__33__62__61__58_0_lam_0_rc_(idris__lc_e_0_rc_, idris__lc_e_1_rc_) do
  idris_Prelude_dot_Interfaces_dot_Prelude_dot_Show_dot_Prec_32_implementation_32_of_32_Prelude_dot_Interfaces_dot_Eq_44__32_method_32__61__61_(idris__lc_e_0_rc_, idris__lc_e_1_rc_)
end

# Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method compare
def idris_Prelude_dot_Interfaces_dot_Prelude_dot_Show_dot_Prec_32_implementation_32_of_32_Prelude_dot_Interfaces_dot_Ord_44__32_method_32_compare(idris__lc_e_0_rc_, idris__lc_e_1_rc_) do
  case (idris__lc_e_1_rc_) do
    {:idris_Prelude_dot_Show_dot_User, idris__lc_in_0_rc_} ->
      case (idris__lc_e_0_rc_) do
        {:idris_Prelude_dot_Show_dot_User, idris__lc_in_1_rc_} ->
          idris_Prelude_dot_Interfaces_dot_Prelude_dot_Nat_dot_Nat_32_implementation_32_of_32_Prelude_dot_Interfaces_dot_Ord_44__32_method_32_compare(idris__lc_in_1_rc_, idris__lc_in_0_rc_)
        
        _ ->
          idris_Prelude_dot_Interfaces_dot_Prelude_dot_Interfaces_dot_Integer_32_implementation_32_of_32_Prelude_dot_Interfaces_dot_Ord_44__32_method_32_compare(idris_Prelude_dot_Show_dot_precCon(idris__lc_e_0_rc_), idris_Prelude_dot_Show_dot_precCon(idris__lc_e_1_rc_))
        
      end
    
    _ ->
      idris_Prelude_dot_Interfaces_dot_Prelude_dot_Interfaces_dot_Integer_32_implementation_32_of_32_Prelude_dot_Interfaces_dot_Ord_44__32_method_32_compare(idris_Prelude_dot_Show_dot_precCon(idris__lc_e_0_rc_), idris_Prelude_dot_Show_dot_precCon(idris__lc_e_1_rc_))
    
  end
end

# with block in Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method >
def idris_with_32_block_32_in_32_Prelude_dot_Interfaces_dot_Prelude_dot_Show_dot_Prec_32_implementation_32_of_32_Prelude_dot_Interfaces_dot_Ord_44__32_method_32__62_(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_) do
  case (idris__lc_e_0_rc_) do
    {:idris_Prelude_dot_Interfaces_dot_GT} ->
      {:idris_Prelude_dot_Bool_dot_True}
    
    _ ->
      {:idris_Prelude_dot_Bool_dot_False}
    
  end
end

# with block in Prelude.Strings.strM
def idris_with_32_block_32_in_32_Prelude_dot_Strings_dot_strM(idris__lc_e_0_rc_, idris__lc_e_1_rc_) do
  case (idris__lc_e_1_rc_) do
    {:idris_Prelude_dot_Basics_dot_No} ->
      {:idris_Prelude_dot_Strings_dot_StrNil}
    
    {:idris_Prelude_dot_Basics_dot_Yes} ->
      {:idris_Prelude_dot_Strings_dot_StrCons, :idris-error}
    
  end
end

# with block in Prelude.Show.firstCharIs
def idris_with_32_block_32_in_32_Prelude_dot_Show_dot_firstCharIs(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_) do
  case (idris__lc_e_2_rc_) do
    {:idris_Prelude_dot_Strings_dot_StrCons, idris__lc_in_0_rc_} ->
      idris__lc_e_0_rc_(idris__lc_in_0_rc_)
    
    {:idris_Prelude_dot_Strings_dot_StrNil} ->
      {:idris_Prelude_dot_Bool_dot_False}
    
  end
end

# case block in io_bind at IO.idr:107:34
def idris_case_32_block_32_in_32_io_bind_32_at_32_IO_dot_idr_58_107_58_34(idris__lc_e_0_rc_, idris__lc_e_1_rc_, idris__lc_e_2_rc_, idris__lc_e_3_rc_, idris__lc_e_4_rc_, idris__lc_e_5_rc_, idris__lc_e_6_rc_, idris__lc_e_7_rc_) do
  idris__lc_e_7_rc_(idris__lc_e_5_rc_)
end

# case block in Void at (casefun Void)
def idris_case_32_block_32_in_32_Void_32_at_32__40_casefun_32_Void_41_() do
  :idris_nothing
end

# <<Void eliminator>>
def idris__60__60_Void_32_eliminator_62__62_() do
  :idris_nothing
end

# constructor of Prelude.Applicative.Alternative
def idris_constructor_32_of_32_Prelude_dot_Applicative_dot_Alternative() do
  {:idris_constructor_32_of_32_Prelude_dot_Applicative_dot_Alternative}
end

# constructor of Prelude.Applicative.Applicative
def idris_constructor_32_of_32_Prelude_dot_Applicative_dot_Applicative() do
  {:idris_constructor_32_of_32_Prelude_dot_Applicative_dot_Applicative}
end

# constructor of Prelude.Cast.Cast
def idris_constructor_32_of_32_Prelude_dot_Cast_dot_Cast() do
  {:idris_constructor_32_of_32_Prelude_dot_Cast_dot_Cast}
end

# constructor of Decidable.Equality.DecEq
def idris_constructor_32_of_32_Decidable_dot_Equality_dot_DecEq() do
  {:idris_constructor_32_of_32_Decidable_dot_Equality_dot_DecEq}
end

# constructor of Prelude.Enum
def idris_constructor_32_of_32_Prelude_dot_Enum() do
  {:idris_constructor_32_of_32_Prelude_dot_Enum}
end

# constructor of Prelude.Interfaces.Eq
def idris_constructor_32_of_32_Prelude_dot_Interfaces_dot_Eq() do
  {:idris_constructor_32_of_32_Prelude_dot_Interfaces_dot_Eq}
end

# constructor of Prelude.Foldable.Foldable
def idris_constructor_32_of_32_Prelude_dot_Foldable_dot_Foldable() do
  {:idris_constructor_32_of_32_Prelude_dot_Foldable_dot_Foldable}
end

# constructor of Prelude.Interfaces.Fractional
def idris_constructor_32_of_32_Prelude_dot_Interfaces_dot_Fractional() do
  {:idris_constructor_32_of_32_Prelude_dot_Interfaces_dot_Fractional}
end

# constructor of Prelude.Functor.Functor
def idris_constructor_32_of_32_Prelude_dot_Functor_dot_Functor() do
  {:idris_constructor_32_of_32_Prelude_dot_Functor_dot_Functor}
end

# constructor of Prelude.Interfaces.Integral
def idris_constructor_32_of_32_Prelude_dot_Interfaces_dot_Integral() do
  {:idris_constructor_32_of_32_Prelude_dot_Interfaces_dot_Integral}
end

# constructor of Prelude.Interfaces.MaxBound
def idris_constructor_32_of_32_Prelude_dot_Interfaces_dot_MaxBound() do
  {:idris_constructor_32_of_32_Prelude_dot_Interfaces_dot_MaxBound}
end

# constructor of Prelude.Interfaces.MinBound
def idris_constructor_32_of_32_Prelude_dot_Interfaces_dot_MinBound() do
  {:idris_constructor_32_of_32_Prelude_dot_Interfaces_dot_MinBound}
end

# constructor of Prelude.Monad.Monad
def idris_constructor_32_of_32_Prelude_dot_Monad_dot_Monad() do
  {:idris_constructor_32_of_32_Prelude_dot_Monad_dot_Monad}
end

# constructor of Prelude.Algebra.Monoid
def idris_constructor_32_of_32_Prelude_dot_Algebra_dot_Monoid() do
  {:idris_constructor_32_of_32_Prelude_dot_Algebra_dot_Monoid}
end

# constructor of Prelude.Interfaces.Neg
def idris_constructor_32_of_32_Prelude_dot_Interfaces_dot_Neg() do
  {:idris_constructor_32_of_32_Prelude_dot_Interfaces_dot_Neg}
end

# constructor of Prelude.Interfaces.Num
def idris_constructor_32_of_32_Prelude_dot_Interfaces_dot_Num() do
  {:idris_constructor_32_of_32_Prelude_dot_Interfaces_dot_Num}
end

# constructor of Prelude.Interfaces.Ord
def idris_constructor_32_of_32_Prelude_dot_Interfaces_dot_Ord() do
  {:idris_constructor_32_of_32_Prelude_dot_Interfaces_dot_Ord}
end

# constructor of Language.Reflection.Quotable
def idris_constructor_32_of_32_Language_dot_Reflection_dot_Quotable() do
  {:idris_constructor_32_of_32_Language_dot_Reflection_dot_Quotable}
end

# constructor of Language.Reflection.ReflConst
def idris_constructor_32_of_32_Language_dot_Reflection_dot_ReflConst() do
  {:idris_constructor_32_of_32_Language_dot_Reflection_dot_ReflConst}
end

# constructor of Prelude.Algebra.Semigroup
def idris_constructor_32_of_32_Prelude_dot_Algebra_dot_Semigroup() do
  {:idris_constructor_32_of_32_Prelude_dot_Algebra_dot_Semigroup}
end

# constructor of Prelude.Show.Show
def idris_constructor_32_of_32_Prelude_dot_Show_dot_Show() do
  {:idris_constructor_32_of_32_Prelude_dot_Show_dot_Show}
end

# constructor of Prelude.WellFounded.Sized
def idris_constructor_32_of_32_Prelude_dot_WellFounded_dot_Sized() do
  {:idris_constructor_32_of_32_Prelude_dot_WellFounded_dot_Sized}
end

# constructor of Prelude.Traversable.Traversable
def idris_constructor_32_of_32_Prelude_dot_Traversable_dot_Traversable() do
  {:idris_constructor_32_of_32_Prelude_dot_Traversable_dot_Traversable}
end

# constructor of Prelude.Uninhabited.Uninhabited
def idris_constructor_32_of_32_Prelude_dot_Uninhabited_dot_Uninhabited() do
  {:idris_constructor_32_of_32_Prelude_dot_Uninhabited_dot_Uninhabited}
end

# constructor of Prelude.WellFounded.WellFounded
def idris_constructor_32_of_32_Prelude_dot_WellFounded_dot_WellFounded() do
  {:idris_constructor_32_of_32_Prelude_dot_WellFounded_dot_WellFounded}
end

# {runMain_0}
def idris__lc_runMain_0_rc_() do
  IdrisRts.force(idris_Main_dot_main(:idris_nothing))
end



IdrisElixir.idris__lc_runMain_0_rc_();