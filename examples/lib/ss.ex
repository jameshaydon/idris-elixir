# This file was compiled by idris-elixir.
defmodule IdrisRts do
  def force(x) do
    case x do
      {:idris_lazy, _, val} -> val
      {:idris_lazy, thunk} -> thunk.()
      _ -> x
    end
  end

  def receive_any() do
    receive do
      x -> x
    end
  end

  def spawn_idris(f) do
    spawn(fn () -> f.(:idris_nothing) end)
  end

end

defmodule IdrisElixir do

    # LFun [Inline] Prelude.Bool.&& [{e_0},{e_1}] case {e_0} of 
    # 	| Prelude.Bool.False() => Prelude.Bool.False()
    # 	| Prelude.Bool.True() => force{ {e_1} }

  # Prelude.Bool.&&
  # NS (UN (&&)) (["Bool","Prelude"])
  def i_Prelude_d_Bool_d__and__and_( e0, e1 ) do
    aux1 =
      e0
    aux2 =
      case aux1 do
        false ->
            # Prelude.Bool.False()
            # 0
          false
        true ->
          IdrisRts.force(e1)
      end
    aux2
  end
  # NS (UN (::)) (["ForeignEnv"])
    # LConstructor ForeignEnv.:: 1 0

  # NS (UN (::)) (["List","Prelude"])
    # LConstructor Prelude.List.:: 1 2

  # NS (UN (::)) (["Stream","Prelude"])
    # LConstructor Prelude.Stream.:: 0 1

  # UN (=)
    # LConstructor = 65536 4


    # LFun [Inline] Prelude.Monad.>>= [{e_0},{e_1},{e_2},{e_3}] {e_1}({e_2}, {e_3})

  # Prelude.Monad.>>=
  # NS (UN (>>=)) (["Monad","Prelude"])
  def i_Prelude_d_Monad_d__gt__gt__eq_( _e0, e1, e2, e3 ) do
    e1.( e2 ).( e3 )
  end
  # NS (UN (ATDouble)) (["Reflection","Language"])
    # LConstructor Language.Reflection.ATDouble 1 0

  # NS (UN (ATInt)) (["Reflection","Language"])
    # LConstructor Language.Reflection.ATInt 0 0

  # NS (UN (AType)) (["Reflection","Language"])
    # LConstructor Language.Reflection.AType 9 0

  # NS (UN (Access)) (["WellFounded","Prelude"])
    # LConstructor Prelude.WellFounded.Access 0 0

  # NS (UN (Accessible)) (["WellFounded","Prelude"])
    # LConstructor Prelude.WellFounded.Accessible 65537 3

  # NS (UN (Additive)) (["Nat","Prelude"])
    # LConstructor Prelude.Nat.Additive 65538 0

  # NS (UN (AllTypes)) (["Reflection","Language"])
    # LConstructor Language.Reflection.AllTypes 2 0

  # NS (UN (AlreadyDefined)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.AlreadyDefined 28 0

  # NS (UN (Alternative)) (["Applicative","Prelude"])
    # LConstructor Prelude.Applicative.Alternative 65539 1

  # NS (UN (App)) (["Reflection","Language"])
    # LConstructor Language.Reflection.App 3 0

  # NS (UN (App)) (["Show","Prelude"])
    # LConstructor Prelude.Show.App 6 0

  # NS (UN (Append)) (["File","Prelude"])
    # LConstructor Prelude.File.Append 2 0

  # NS (UN (Applicative)) (["Applicative","Prelude"])
    # LConstructor Prelude.Applicative.Applicative 65540 1

  # NS (UN (ApplyTactic)) (["Reflection","Language"])
    # LConstructor Language.Reflection.ApplyTactic 12 0

  # NS (UN (ArithTy)) (["Reflection","Language"])
    # LConstructor Language.Reflection.ArithTy 65541 0

  # NS (UN (B16)) (["Reflection","Language"])
    # LConstructor Language.Reflection.B16 6 0

  # NS (UN (B32)) (["Reflection","Language"])
    # LConstructor Language.Reflection.B32 7 0

  # NS (UN (B64)) (["Reflection","Language"])
    # LConstructor Language.Reflection.B64 8 0

  # NS (UN (B8)) (["Reflection","Language"])
    # LConstructor Language.Reflection.B8 5 0

  # NS (UN (BI)) (["Reflection","Language"])
    # LConstructor Language.Reflection.BI 1 0

  # NS (UN (Backtick)) (["Show","Prelude"])
    # LConstructor Prelude.Show.Backtick 3 0

  # NS (UN (Beh)) (["SafeActors"])
    # LConstructor SafeActors.Beh 65542 2

  # NS (UN (Bind)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Bind 2 0

  # NS (UN (Bind)) (["SafeActors"])
    # LConstructor SafeActors.Bind 5 0

  # NS (UN (Binder)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Binder 65543 1

  # NS (UN (Bool)) (["Bool","Prelude"])
    # LConstructor Prelude.Bool.Bool 65544 0

  # NS (UN (Borrowed)) (["Ownership"])
    # LConstructor Ownership.Borrowed 65545 1

  # NS (UN (Bound)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Bound 0 0

  # NS (UN (ByReflection)) (["Reflection","Language"])
    # LConstructor Language.Reflection.ByReflection 14 0

  # UN (CData)
    # LConstructor CData 65546 0

  # NS (UN (CFnPtr)) (["FFI_C"])
    # LConstructor FFI_C.CFnPtr 65547 1

  # NS (UN (C_Any)) (["FFI_C"])
    # LConstructor FFI_C.C_Any 5 0

  # NS (UN (C_CData)) (["FFI_C"])
    # LConstructor FFI_C.C_CData 8 0

  # NS (UN (C_Float)) (["FFI_C"])
    # LConstructor FFI_C.C_Float 1 0

  # NS (UN (C_Fn)) (["FFI_C"])
    # LConstructor FFI_C.C_Fn 0 0

  # NS (UN (C_FnBase)) (["FFI_C"])
    # LConstructor FFI_C.C_FnBase 2 0

  # NS (UN (C_FnIO)) (["FFI_C"])
    # LConstructor FFI_C.C_FnIO 1 0

  # NS (UN (C_FnT)) (["FFI_C"])
    # LConstructor FFI_C.C_FnT 6 0

  # NS (UN (C_FnTypes)) (["FFI_C"])
    # LConstructor FFI_C.C_FnTypes 65548 1

  # NS (UN (C_IntBits16)) (["FFI_C"])
    # LConstructor FFI_C.C_IntBits16 3 0

  # NS (UN (C_IntBits32)) (["FFI_C"])
    # LConstructor FFI_C.C_IntBits32 4 0

  # NS (UN (C_IntBits64)) (["FFI_C"])
    # LConstructor FFI_C.C_IntBits64 5 0

  # NS (UN (C_IntBits8)) (["FFI_C"])
    # LConstructor FFI_C.C_IntBits8 2 0

  # NS (UN (C_IntChar)) (["FFI_C"])
    # LConstructor FFI_C.C_IntChar 0 0

  # NS (UN (C_IntNative)) (["FFI_C"])
    # LConstructor FFI_C.C_IntNative 1 0

  # NS (UN (C_IntT)) (["FFI_C"])
    # LConstructor FFI_C.C_IntT 7 0

  # NS (UN (C_IntTypes)) (["FFI_C"])
    # LConstructor FFI_C.C_IntTypes 65549 1

  # NS (UN (C_MPtr)) (["FFI_C"])
    # LConstructor FFI_C.C_MPtr 3 0

  # NS (UN (C_Ptr)) (["FFI_C"])
    # LConstructor FFI_C.C_Ptr 2 0

  # NS (UN (C_Str)) (["FFI_C"])
    # LConstructor FFI_C.C_Str 0 0

  # NS (UN (C_Types)) (["FFI_C"])
    # LConstructor FFI_C.C_Types 65550 1

  # NS (UN (C_Unit)) (["FFI_C"])
    # LConstructor FFI_C.C_Unit 4 0

  # NS (UN (CantConvert)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.CantConvert 4 0

  # NS (UN (CantInferType)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.CantInferType 7 0

  # NS (UN (CantIntroduce)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.CantIntroduce 11 0

  # NS (UN (CantMatch)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.CantMatch 14 0

  # NS (UN (CantResolve)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.CantResolve 17 0

  # NS (UN (CantResolveAlts)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.CantResolveAlts 19 0

  # NS (UN (CantSolveGoal)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.CantSolveGoal 5 0

  # NS (UN (CantUnify)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.CantUnify 2 0

  # NS (UN (Case)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Case 20 0

  # NS (UN (CaseN)) (["Reflection","Language"])
    # LConstructor Language.Reflection.CaseN 5 0

  # NS (UN (Cast)) (["Cast","Prelude"])
    # LConstructor Prelude.Cast.Cast 65551 2

  # NS (UN (Ch)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Ch 3 0

  # NS (UN (Claim)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Claim 4 0

  # NS (UN (CmpEQ)) (["Nat","Prelude"])
    # LConstructor Prelude.Nat.CmpEQ 1 0

  # NS (UN (CmpGT)) (["Nat","Prelude"])
    # LConstructor Prelude.Nat.CmpGT 2 0

  # NS (UN (CmpLT)) (["Nat","Prelude"])
    # LConstructor Prelude.Nat.CmpLT 0 0

  # NS (UN (CmpNat)) (["Nat","Prelude"])
    # LConstructor Prelude.Nat.CmpNat 65552 2

  # NS (UN (Compute)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Compute 23 0

  # NS (UN (Const)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Const 65553 0

  # NS (UN (Constraint)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Constraint 2 0

  # NS (UN (Constructor)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Constructor 0 0

  # NS (UN (ConstructorDefn)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.ConstructorDefn 65554 0

  # NS (UN (CtorArg)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.CtorArg 65555 0

  # NS (UN (CtorField)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.CtorField 1 0

  # NS (UN (CtorParameter)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.CtorParameter 0 0

  # NS (UN (DCon)) (["Reflection","Language"])
    # LConstructor Language.Reflection.DCon 2 0

  # NS (UN (DHere)) (["FFI_Export"])
    # LConstructor FFI_Export.DHere 0 0

  # NS (UN (DPair)) (["Builtins"])
    # LConstructor Builtins.DPair 65556 2

  # NS (UN (DThere)) (["FFI_Export"])
    # LConstructor FFI_Export.DThere 1 0

  # NS (UN (Data)) (["FFI_Export"])
    # LConstructor FFI_Export.Data 0 3

  # NS (UN (DataDefined)) (["FFI_Export"])
    # LConstructor FFI_Export.DataDefined 65557 4

  # NS (UN (DataDefn)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.DataDefn 65558 0

  # NS (UN (Datatype)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Datatype 65559 0

  # NS (UN (Dec)) (["Basics","Prelude"])
    # LConstructor Prelude.Basics.Dec 65560 1

  # NS (UN (DecEq)) (["Equality","Decidable"])
    # LConstructor Decidable.Equality.DecEq 65561 1

  # NS (UN (Declare)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Declare 0 0

  # NS (UN (DefineDatatype)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.DefineDatatype 0 0

  # NS (UN (DefineFun)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.DefineFun 0 0

  # UN (Delay)
    # LConstructor Delay 0 1

  # UN (DelayReason)
    # LConstructor DelayReason 65562 0

  # UN (Delayed)
    # LConstructor Delayed 65563 2

  # NS (UN (Dollar)) (["Show","Prelude"])
    # LConstructor Prelude.Show.Dollar 2 0

  # NS (UN (EQ)) (["Interfaces","Prelude"])
    # LConstructor Prelude.Interfaces.EQ 1 0

  # NS (UN (Either)) (["Either","Prelude"])
    # LConstructor Prelude.Either.Either 65564 2

  # NS (UN (Elab)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Elab 65565 1

  # NS (UN (Element)) (["Pairs","Prelude"])
    # LConstructor Prelude.Pairs.Element 0 0

  # NS (UN (ElimN)) (["Reflection","Language"])
    # LConstructor Language.Reflection.ElimN 6 0

  # NS (UN (ElxBool_io)) (["ElixirFFI"])
    # LConstructor ElixirFFI.ElxBool_io 4 0

  # NS (UN (ElxChar_io)) (["ElixirFFI"])
    # LConstructor ElixirFFI.ElxChar_io 5 0

  # NS (UN (ElxDouble_io)) (["ElixirFFI"])
    # LConstructor ElixirFFI.ElxDouble_io 3 0

  # NS (UN (ElxFun_io)) (["ElixirFFI"])
    # LConstructor ElixirFFI.ElxFun_io 10 0

  # NS (UN (ElxInt_io)) (["ElixirFFI"])
    # LConstructor ElixirFFI.ElxInt_io 0 0

  # NS (UN (ElxInteger_io)) (["ElixirFFI"])
    # LConstructor ElixirFFI.ElxInteger_io 2 0

  # NS (UN (ElxList_io)) (["ElixirFFI"])
    # LConstructor ElixirFFI.ElxList_io 9 0

  # NS (UN (ElxMaybe_io)) (["ElixirFFI"])
    # LConstructor ElixirFFI.ElxMaybe_io 11 0

  # NS (UN (ElxNat_io)) (["ElixirFFI"])
    # LConstructor ElixirFFI.ElxNat_io 1 0

  # NS (UN (ElxPair_io)) (["ElixirFFI"])
    # LConstructor ElixirFFI.ElxPair_io 8 0

  # NS (UN (ElxPtr_io)) (["ElixirFFI"])
    # LConstructor ElixirFFI.ElxPtr_io 12 0

  # NS (UN (ElxString_io)) (["ElixirFFI"])
    # LConstructor ElixirFFI.ElxString_io 6 0

  # NS (UN (ElxTypes)) (["ElixirFFI"])
    # LConstructor ElixirFFI.ElxTypes 65566 1

  # NS (UN (ElxUnit_io)) (["ElixirFFI"])
    # LConstructor ElixirFFI.ElxUnit_io 7 0

  # NS (UN (End)) (["FFI_Export"])
    # LConstructor FFI_Export.End 2 0

  # NS (UN (Enum)) (["Prelude"])
    # LConstructor Prelude.Enum 65567 1

  # NS (UN (Eq)) (["Interfaces","Prelude"])
    # LConstructor Prelude.Interfaces.Eq 65568 1

  # NS (UN (Eq)) (["Show","Prelude"])
    # LConstructor Prelude.Show.Eq 1 0

  # NS (UN (Erased)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Erased 0 0

  # NS (UN (Erased)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Erased 5 0

  # NS (UN (Erasure)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Erasure 65569 0

  # NS (UN (Err)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.Err 65570 0

  # NS (UN (Error)) (["Providers","Prelude"])
    # LConstructor Prelude.Providers.Error 1 0

  # NS (UN (ErrorReportPart)) (["Reflection","Language"])
    # LConstructor Language.Reflection.ErrorReportPart 65571 0

  # NS (UN (Evidence)) (["Pairs","Prelude"])
    # LConstructor Prelude.Pairs.Evidence 0 0

  # NS (UN (Exact)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Exact 16 0

  # NS (UN (Exists)) (["Pairs","Prelude"])
    # LConstructor Prelude.Pairs.Exists 65572 2

  # NS (UN (Explicit)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Explicit 0 0

  # NS (UN (FEnv)) (["ForeignEnv"])
    # LConstructor ForeignEnv.FEnv 65573 2

  # UN (FFI)
    # LConstructor FFI 65574 0

  # NS (UN (FFI_Base)) (["FFI_Export"])
    # LConstructor FFI_Export.FFI_Base 65575 3

  # NS (UN (FFI_ExpType)) (["FFI_Export"])
    # LConstructor FFI_Export.FFI_ExpType 0 2

  # NS (UN (FFI_Export)) (["FFI_Export"])
    # LConstructor FFI_Export.FFI_Export 65576 3

  # NS (UN (FFI_Exportable)) (["FFI_Export"])
    # LConstructor FFI_Export.FFI_Exportable 65577 3

  # NS (UN (FFI_Fun)) (["FFI_Export"])
    # LConstructor FFI_Export.FFI_Fun 1 2

  # NS (UN (FFI_IO)) (["FFI_Export"])
    # LConstructor FFI_Export.FFI_IO 0 1

  # NS (UN (FFI_Prim)) (["FFI_Export"])
    # LConstructor FFI_Export.FFI_Prim 1 1

  # NS (UN (FFI_Ret)) (["FFI_Export"])
    # LConstructor FFI_Export.FFI_Ret 2 1

  # UN (FFun)
    # LConstructor FFun 1 0

  # NS (UN (FHandle)) (["File","Prelude"])
    # LConstructor Prelude.File.FHandle 0 1

  # UN (FRet)
    # LConstructor FRet 0 0

  # UN (FTy)
    # LConstructor FTy 65578 3

  # NS (UN (Fail)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Fail 25 0

  # NS (UN (False)) (["Bool","Prelude"])
    # LConstructor Prelude.Bool.False 0 0

  # NS (UN (File)) (["File","Prelude"])
    # LConstructor Prelude.File.File 65579 0

  # NS (UN (FileError)) (["File","Prelude"])
    # LConstructor Prelude.File.FileError 65580 0

  # NS (UN (FileLoc)) (["Reflection","Language"])
    # LConstructor Language.Reflection.FileLoc 0 0

  # NS (UN (FileNotFound)) (["File","Prelude"])
    # LConstructor Prelude.File.FileNotFound 3 0

  # NS (UN (FileReadError)) (["File","Prelude"])
    # LConstructor Prelude.File.FileReadError 1 0

  # NS (UN (FileWriteError)) (["File","Prelude"])
    # LConstructor Prelude.File.FileWriteError 2 0

  # NS (UN (Fill)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Fill 15 0

  # NS (UN (Fixity)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Fixity 65581 0

  # NS (UN (Fl)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Fl 2 0

  # NS (UN (Focus)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Focus 17 0

  # NS (UN (Foldable)) (["Foldable","Prelude"])
    # LConstructor Prelude.Foldable.Foldable 65582 1


    # LFun [Inline] Force [{e_0},{e_1},{e_2}] force{ {e_2} }

  # Force
  # UN (Force)
  def i_Force( _e0, _e1, e2 ) do
    IdrisRts.force(e2)
  end
  # NS (UN (Forgot)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Forgot 12 0

  # NS (UN (Fractional)) (["Interfaces","Prelude"])
    # LConstructor Prelude.Interfaces.Fractional 65583 1

  # NS (UN (Fun)) (["FFI_Export"])
    # LConstructor FFI_Export.Fun 1 4

  # NS (UN (FunArg)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.FunArg 65584 0

  # NS (UN (FunClause)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.FunClause 65585 1

  # NS (UN (FunDefn)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.FunDefn 65586 1

  # NS (UN (Functor)) (["Functor","Prelude"])
    # LConstructor Prelude.Functor.Functor 65587 1

  # NS (UN (GHole)) (["Reflection","Language"])
    # LConstructor Language.Reflection.GHole 4 0

  # NS (UN (GT)) (["Interfaces","Prelude"])
    # LConstructor Prelude.Interfaces.GT 2 0

  # NS (UN (GenericFileError)) (["File","Prelude"])
    # LConstructor Prelude.File.GenericFileError 0 0

  # NS (UN (GetAdditive)) (["Nat","Prelude"])
    # LConstructor Prelude.Nat.GetAdditive 0 0

  # NS (UN (GetMultiplicative)) (["Nat","Prelude"])
    # LConstructor Prelude.Nat.GetMultiplicative 0 0

  # NS (UN (GoalType)) (["Reflection","Language"])
    # LConstructor Language.Reflection.GoalType 1 0

  # NS (UN (Guess)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Guess 5 0

  # NS (UN (HandleCallRet)) (["HandleCall","ElixirFFI"])
    # LConstructor ElixirFFI.HandleCall.HandleCallRet 65588 3

  # NS (UN (Hole)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Hole 3 0

  # NS (UN (I)) (["Reflection","Language"])
    # LConstructor Language.Reflection.I 0 0

  # UN (IO')
    # LConstructor IO' 65589 2

  # NS (UN (IT16)) (["Reflection","Language"])
    # LConstructor Language.Reflection.IT16 1 0

  # NS (UN (IT32)) (["Reflection","Language"])
    # LConstructor Language.Reflection.IT32 2 0

  # NS (UN (IT64)) (["Reflection","Language"])
    # LConstructor Language.Reflection.IT64 3 0

  # NS (UN (IT8)) (["Reflection","Language"])
    # LConstructor Language.Reflection.IT8 0 0

  # NS (UN (ITBig)) (["Reflection","Language"])
    # LConstructor Language.Reflection.ITBig 2 0

  # NS (UN (ITChar)) (["Reflection","Language"])
    # LConstructor Language.Reflection.ITChar 3 0

  # NS (UN (ITFixed)) (["Reflection","Language"])
    # LConstructor Language.Reflection.ITFixed 0 0

  # NS (UN (ITNative)) (["Reflection","Language"])
    # LConstructor Language.Reflection.ITNative 1 0

  # NS (UN (Ignore)) (["Init","ElixirFFI"])
    # LConstructor ElixirFFI.Init.Ignore 2 0

  # NS (UN (Implementation)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Implementation 8 0

  # NS (UN (ImplementationCtorN)) (["Reflection","Language"])
    # LConstructor Language.Reflection.ImplementationCtorN 7 0

  # NS (UN (ImplementationN)) (["Reflection","Language"])
    # LConstructor Language.Reflection.ImplementationN 2 0

  # NS (UN (Implicit)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Implicit 1 0

  # NS (UN (InBounds)) (["List","Prelude"])
    # LConstructor Prelude.List.InBounds 65590 3

  # NS (UN (InFirst)) (["List","Prelude"])
    # LConstructor Prelude.List.InFirst 0 0

  # NS (UN (InLater)) (["List","Prelude"])
    # LConstructor Prelude.List.InLater 1 0

  # NS (UN (Inaccessible)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.Inaccessible 25 0

  # NS (UN (IncompleteTerm)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.IncompleteTerm 21 0

  # NS (UN (Induction)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Induction 19 0

  # UN (Infinite)
    # LConstructor Infinite 0 0

  # NS (UN (InfiniteUnify)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.InfiniteUnify 3 0

  # NS (UN (Infix)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Infix 2 0

  # NS (UN (Infixl)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Infixl 0 0

  # NS (UN (Infixr)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Infixr 1 0

  # NS (UN (InitRet)) (["Init","ElixirFFI"])
    # LConstructor ElixirFFI.Init.InitRet 65591 2

  # NS (UN (IntTy)) (["Reflection","Language"])
    # LConstructor Language.Reflection.IntTy 65592 0

  # NS (UN (Integral)) (["Interfaces","Prelude"])
    # LConstructor Prelude.Interfaces.Integral 65593 1

  # NS (UN (InternalMsg)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.InternalMsg 1 0

  # NS (UN (Intro)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Intro 11 0

  # NS (UN (Intros)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Intros 10 0

  # NS (UN (InvalidTCArg)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.InvalidTCArg 18 0

  # NS (UN (IsJust)) (["Maybe","Prelude"])
    # LConstructor Prelude.Maybe.IsJust 65594 2

  # NS (UN (IsNonEmpty)) (["List","Prelude"])
    # LConstructor Prelude.List.IsNonEmpty 0 0

  # NS (UN (ItIsJust)) (["Maybe","Prelude"])
    # LConstructor Prelude.Maybe.ItIsJust 0 0

  # UN (JS_Float)
    # LConstructor JS_Float 1 0

  # UN (JS_Fn)
    # LConstructor JS_Fn 0 0

  # UN (JS_FnBase)
    # LConstructor JS_FnBase 2 0

  # UN (JS_FnIO)
    # LConstructor JS_FnIO 1 0

  # UN (JS_FnT)
    # LConstructor JS_FnT 4 0

  # UN (JS_FnTypes)
    # LConstructor JS_FnTypes 65595 1

  # UN (JS_IntChar)
    # LConstructor JS_IntChar 0 0

  # UN (JS_IntNative)
    # LConstructor JS_IntNative 1 0

  # UN (JS_IntT)
    # LConstructor JS_IntT 5 0

  # UN (JS_IntTypes)
    # LConstructor JS_IntTypes 65596 1

  # UN (JS_Ptr)
    # LConstructor JS_Ptr 2 0

  # UN (JS_Str)
    # LConstructor JS_Str 0 0

  # UN (JS_Types)
    # LConstructor JS_Types 65597 1

  # UN (JS_Unit)
    # LConstructor JS_Unit 3 0

  # UN (JsFn)
    # LConstructor JsFn 65598 1

  # NS (UN (Just)) (["Maybe","Prelude"])
    # LConstructor Prelude.Maybe.Just 1 1

  # NS (UN (LT)) (["Interfaces","Prelude"])
    # LConstructor Prelude.Interfaces.LT 0 0

  # NS (UN (LTE)) (["Nat","Prelude"])
    # LConstructor Prelude.Nat.LTE 65599 2

  # NS (UN (LTESucc)) (["Nat","Prelude"])
    # LConstructor Prelude.Nat.LTESucc 1 0

  # NS (UN (LTEZero)) (["Nat","Prelude"])
    # LConstructor Prelude.Nat.LTEZero 0 0

  # NS (UN (Lam)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Lam 0 0

  # UN (LazyValue)
    # LConstructor LazyValue 1 0

  # NS (UN (Leaf)) (["Main"])
    # LConstructor Main.Leaf 0 1

  # NS (UN (Left)) (["Either","Prelude"])
    # LConstructor Prelude.Either.Left 0 1

  # NS (UN (LeftIsNotZero)) (["Nat","Prelude"])
    # LConstructor Prelude.Nat.LeftIsNotZero 0 0

  # NS (UN (Let)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Let 2 0

  # NS (UN (LetTac)) (["Reflection","Language"])
    # LConstructor Language.Reflection.LetTac 21 0

  # NS (UN (LetTacTy)) (["Reflection","Language"])
    # LConstructor Language.Reflection.LetTacTy 22 0

  # NS (UN (LiftIO)) (["SafeActors"])
    # LConstructor SafeActors.LiftIO 6 0

  # NS (UN (List)) (["List","Prelude"])
    # LConstructor Prelude.List.List 65600 1

  # NS (UN (LoadingFailed)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.LoadingFailed 32 0

  # NS (UN (MN)) (["Reflection","Language"])
    # LConstructor Language.Reflection.MN 2 0

  # UN (ManagedPtr)
    # LConstructor ManagedPtr 65601 0

  # NS (UN (MaxBound)) (["Interfaces","Prelude"])
    # LConstructor Prelude.Interfaces.MaxBound 65602 1

  # NS (UN (Maybe)) (["Maybe","Prelude"])
    # LConstructor Prelude.Maybe.Maybe 65603 1

  # NS (UN (MetaN)) (["Reflection","Language"])
    # LConstructor Language.Reflection.MetaN 8 0

  # NS (UN (MethodN)) (["Reflection","Language"])
    # LConstructor Language.Reflection.MethodN 4 0

  # NS (UN (MinBound)) (["Interfaces","Prelude"])
    # LConstructor Prelude.Interfaces.MinBound 65604 1

  # NS (UN (MkCFnPtr)) (["FFI_C"])
    # LConstructor FFI_C.MkCFnPtr 0 1

  # NS (UN (MkDPair)) (["Builtins"])
    # LConstructor Builtins.MkDPair 0 0

  # NS (UN (MkDatatype)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.MkDatatype 0 0

  # UN (MkFFI)
    # LConstructor MkFFI 0 0

  # NS (UN (MkFunArg)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.MkFunArg 0 0

  # NS (UN (MkFunClause)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.MkFunClause 0 0

  # UN (MkIO)
    # LConstructor MkIO 0 1

  # NS (UN (MkImpossibleClause)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.MkImpossibleClause 1 0

  # UN (MkJsFn)
    # LConstructor MkJsFn 0 1

  # NS (UN (MkPID)) (["SafeActors"])
    # LConstructor SafeActors.MkPID 0 0

  # NS (UN (MkPair)) (["Builtins"])
    # LConstructor Builtins.MkPair 0 2

  # NS (UN (MkRaw)) (["FFI_C"])
    # LConstructor FFI_C.MkRaw 0 1

  # NS (UN (MkReq)) (["HandleCall","ElixirFFI"])
    # LConstructor ElixirFFI.HandleCall.MkReq 0 2

  # NS (UN (MkString)) (["Strings","Prelude"])
    # LConstructor Prelude.Strings.MkString 0 0

  # NS (UN (MkUPair)) (["Builtins"])
    # LConstructor Builtins.MkUPair 0 2

  # UN (MkUnit)
    # LConstructor MkUnit 0 0

  # NS (UN (Mode)) (["File","Prelude"])
    # LConstructor Prelude.File.Mode 65605 0

  # NS (UN (Monad)) (["Monad","Prelude"])
    # LConstructor Prelude.Monad.Monad 65606 1

  # NS (UN (Monoid)) (["Algebra","Prelude"])
    # LConstructor Prelude.Algebra.Monoid 65607 1

  # NS (UN (Msg)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.Msg 0 0

  # NS (UN (Multiplicative)) (["Nat","Prelude"])
    # LConstructor Prelude.Nat.Multiplicative 65608 0

  # NS (UN (NS)) (["Reflection","Language"])
    # LConstructor Language.Reflection.NS 1 0

  # NS (UN (NamePart)) (["Reflection","Language"])
    # LConstructor Language.Reflection.NamePart 1 0

  # NS (UN (NameType)) (["Reflection","Language"])
    # LConstructor Language.Reflection.NameType 65609 0

  # NS (UN (Nat)) (["Nat","Prelude"])
    # LConstructor Prelude.Nat.Nat 65610 0

  # NS (UN (NativeTy)) (["Reflection","Language"])
    # LConstructor Language.Reflection.NativeTy 65611 0

  # NS (UN (Neg)) (["Interfaces","Prelude"])
    # LConstructor Prelude.Interfaces.Neg 65612 1

  # NS (UN (Nil)) (["ForeignEnv"])
    # LConstructor ForeignEnv.Nil 0 0

  # NS (UN (Nil)) (["List","Prelude"])
    # LConstructor Prelude.List.Nil 0 0

  # NS (UN (No)) (["Basics","Prelude"])
    # LConstructor Prelude.Basics.No 1 0

  # NS (UN (NoEliminator)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.NoEliminator 22 0

  # NS (UN (NoRewriting)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.NoRewriting 30 0

  # NS (UN (NoSuchVariable)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.NoSuchVariable 12 0

  # NS (UN (NoTypeDecl)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.NoTypeDecl 15 0

  # NS (UN (NoValidAlts)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.NoValidAlts 20 0

  # NS (UN (Node)) (["Main"])
    # LConstructor Main.Node 1 2

  # NS (UN (NonCollapsiblePostulate)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.NonCollapsiblePostulate 27 0

  # NS (UN (NonEmpty)) (["List","Prelude"])
    # LConstructor Prelude.List.NonEmpty 65613 2

  # NS (UN (NonFunctionType)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.NonFunctionType 8 0

  # NS (UN (NotBothZero)) (["Nat","Prelude"])
    # LConstructor Prelude.Nat.NotBothZero 65614 2

  # NS (UN (NotEquality)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.NotEquality 9 0

  # NS (UN (NotErased)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.NotErased 1 0

  # NS (UN (NotInjective)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.NotInjective 16 0

  # NS (UN (Nothing)) (["Maybe","Prelude"])
    # LConstructor Prelude.Maybe.Nothing 0 0

  # NS (UN (NullType)) (["Reflection","Language"])
    # LConstructor Language.Reflection.NullType 0 0

  # NS (UN (Num)) (["Interfaces","Prelude"])
    # LConstructor Prelude.Interfaces.Num 65615 1

  # NS (UN (Ok)) (["Init","ElixirFFI"])
    # LConstructor ElixirFFI.Init.Ok 0 1

  # NS (UN (OkTimeout)) (["Init","ElixirFFI"])
    # LConstructor ElixirFFI.Init.OkTimeout 1 2

  # NS (UN (Open)) (["Show","Prelude"])
    # LConstructor Prelude.Show.Open 0 0

  # NS (UN (Ord)) (["Interfaces","Prelude"])
    # LConstructor Prelude.Interfaces.Ord 65616 1

  # NS (UN (Ordering)) (["Interfaces","Prelude"])
    # LConstructor Prelude.Interfaces.Ordering 65617 0

  # NS (UN (P)) (["Reflection","Language"])
    # LConstructor Language.Reflection.P 0 0

  # NS (UN (PID)) (["SafeActors"])
    # LConstructor SafeActors.PID 65618 1

  # NS (UN (PVTy)) (["Reflection","Language"])
    # LConstructor Language.Reflection.PVTy 7 0

  # NS (UN (PVar)) (["Reflection","Language"])
    # LConstructor Language.Reflection.PVar 6 0

  # NS (UN (Pair)) (["Builtins"])
    # LConstructor Builtins.Pair 65619 2

  # NS (UN (ParentN)) (["Reflection","Language"])
    # LConstructor Language.Reflection.ParentN 3 0

  # NS (UN (PermissionDenied)) (["File","Prelude"])
    # LConstructor Prelude.File.PermissionDenied 4 0

  # NS (UN (Pi)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Pi 1 0

  # NS (UN (Plicity)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Plicity 65620 0

  # NS (UN (Prec)) (["Show","Prelude"])
    # LConstructor Prelude.Show.Prec 65621 0

  # NS (UN (Prefix)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prefix 3 0

  # NS (UN (PrefixMinus)) (["Show","Prelude"])
    # LConstructor Prelude.Show.PrefixMinus 5 0

  # UN (PrimIO)
    # LConstructor PrimIO 65622 1

  # NS (UN (Prim__AddImplementation)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__AddImplementation 38 0

  # NS (UN (Prim__Apply)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Apply 18 0

  # NS (UN (Prim__Attack)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Attack 22 0

  # NS (UN (Prim__BindElab)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__BindElab 1 0

  # NS (UN (Prim__Check)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Check 12 0

  # NS (UN (Prim__Claim)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Claim 24 0

  # NS (UN (Prim__Compute)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Compute 30 0

  # NS (UN (Prim__Converts)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Converts 33 0

  # NS (UN (Prim__Debug)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Debug 44 0

  # NS (UN (Prim__DeclareDatatype)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__DeclareDatatype 36 0

  # NS (UN (Prim__DeclareType)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__DeclareType 34 0

  # NS (UN (Prim__DefineDatatype)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__DefineDatatype 37 0

  # NS (UN (Prim__DefineFunction)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__DefineFunction 35 0

  # NS (UN (Prim__Env)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Env 4 0

  # NS (UN (Prim__Fail)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Fail 3 0

  # NS (UN (Prim__Fill)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Fill 17 0

  # NS (UN (Prim__Fixity)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Fixity 43 0

  # NS (UN (Prim__Focus)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Focus 20 0

  # NS (UN (Prim__Forall)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Forall 26 0

  # NS (UN (Prim__Gensym)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Gensym 15 0

  # NS (UN (Prim__Goal)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Goal 5 0

  # NS (UN (Prim__Guess)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Guess 7 0

  # NS (UN (Prim__Holes)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Holes 6 0

  # UN (Prim__IO)
    # LConstructor Prim__IO 0 1

  # NS (UN (Prim__Intro)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Intro 25 0

  # NS (UN (Prim__IsTCName)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__IsTCName 39 0

  # NS (UN (Prim__LetBind)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__LetBind 29 0

  # NS (UN (Prim__LookupArgs)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__LookupArgs 11 0

  # NS (UN (Prim__LookupDatatype)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__LookupDatatype 9 0

  # NS (UN (Prim__LookupFunDefn)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__LookupFunDefn 10 0

  # NS (UN (Prim__LookupTy)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__LookupTy 8 0

  # NS (UN (Prim__MatchApply)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__MatchApply 19 0

  # NS (UN (Prim__Metavar)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Metavar 45 0

  # NS (UN (Prim__Namespace)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Namespace 14 0

  # NS (UN (Prim__Normalise)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Normalise 31 0

  # NS (UN (Prim__PatBind)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__PatBind 28 0

  # NS (UN (Prim__PatVar)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__PatVar 27 0

  # NS (UN (Prim__PureElab)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__PureElab 0 0

  # NS (UN (Prim__RecursiveElab)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__RecursiveElab 42 0

  # NS (UN (Prim__ResolveTC)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__ResolveTC 40 0

  # NS (UN (Prim__Rewrite)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Rewrite 23 0

  # NS (UN (Prim__Search)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Search 41 0

  # NS (UN (Prim__Solve)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Solve 16 0

  # NS (UN (Prim__SourceLocation)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__SourceLocation 13 0

  # NS (UN (Prim__Try)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Try 2 0

  # NS (UN (Prim__Unfocus)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Unfocus 21 0

  # NS (UN (Prim__Whnf)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.Prim__Whnf 32 0

  # NS (UN (ProgramLineComment)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.ProgramLineComment 24 0

  # NS (UN (ProofSearchFail)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.ProofSearchFail 29 0

  # NS (UN (Provide)) (["Providers","Prelude"])
    # LConstructor Prelude.Providers.Provide 0 0

  # NS (UN (Provider)) (["Providers","Prelude"])
    # LConstructor Prelude.Providers.Provider 65623 1

  # NS (UN (ProviderError)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.ProviderError 31 0

  # UN (Ptr)
    # LConstructor Ptr 65624 0

  # NS (UN (Pure)) (["SafeActors"])
    # LConstructor SafeActors.Pure 4 0

  # NS (UN (Quotable)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Quotable 65625 2

  # NS (UN (RApp)) (["Reflection","Language"])
    # LConstructor Language.Reflection.RApp 2 0

  # NS (UN (RBind)) (["Reflection","Language"])
    # LConstructor Language.Reflection.RBind 1 0

  # NS (UN (RConstant)) (["Reflection","Language"])
    # LConstructor Language.Reflection.RConstant 5 0

  # NS (UN (RType)) (["Reflection","Language"])
    # LConstructor Language.Reflection.RType 3 0

  # NS (UN (RUType)) (["Reflection","Language"])
    # LConstructor Language.Reflection.RUType 4 0

  # NS (UN (Raw)) (["FFI_C"])
    # LConstructor FFI_C.Raw 65626 1

  # NS (UN (Raw)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Raw 65627 0

  # NS (UN (RawPart)) (["Reflection","Language"])
    # LConstructor Language.Reflection.RawPart 3 0

  # NS (UN (Read)) (["File","Prelude"])
    # LConstructor Prelude.File.Read 0 0

  # NS (UN (Read)) (["Ownership"])
    # LConstructor Ownership.Read 0 0

  # NS (UN (ReadAppend)) (["File","Prelude"])
    # LConstructor Prelude.File.ReadAppend 5 0

  # NS (UN (ReadWrite)) (["File","Prelude"])
    # LConstructor Prelude.File.ReadWrite 3 0

  # NS (UN (ReadWriteTruncate)) (["File","Prelude"])
    # LConstructor Prelude.File.ReadWriteTruncate 4 0

  # NS (UN (Recv)) (["SafeActors"])
    # LConstructor SafeActors.Recv 1 0

  # NS (UN (Ref)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Ref 1 0

  # NS (UN (Refine)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Refine 2 0

  # UN (Refl)
    # LConstructor Refl 0 0

  # NS (UN (ReflConst)) (["Reflection","Language"])
    # LConstructor Language.Reflection.ReflConst 65628 1

  # NS (UN (Reflect)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Reflect 13 0

  # NS (UN (Reply)) (["HandleCall","ElixirFFI"])
    # LConstructor ElixirFFI.HandleCall.Reply 0 2

  # NS (UN (Req)) (["HandleCall","ElixirFFI"])
    # LConstructor ElixirFFI.HandleCall.Req 65629 2

  # NS (UN (Rewrite)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Rewrite 18 0

  # NS (UN (Right)) (["Either","Prelude"])
    # LConstructor Prelude.Either.Right 1 1

  # NS (UN (RightIsNotZero)) (["Nat","Prelude"])
    # LConstructor Prelude.Nat.RightIsNotZero 1 0

  # NS (UN (S)) (["Nat","Prelude"])
    # LConstructor Prelude.Nat.S 1 0

  # NS (UN (SN)) (["Reflection","Language"])
    # LConstructor Language.Reflection.SN 3 0

  # NS (UN (Search)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Search 7 0

  # NS (UN (Self)) (["SafeActors"])
    # LConstructor SafeActors.Self 0 0

  # NS (UN (Semigroup)) (["Algebra","Prelude"])
    # LConstructor Prelude.Algebra.Semigroup 65630 1

  # NS (UN (Send)) (["SafeActors"])
    # LConstructor SafeActors.Send 2 0

  # NS (UN (Seq)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Seq 3 0

  # NS (UN (Show)) (["Show","Prelude"])
    # LConstructor Prelude.Show.Show 65631 1

  # NS (UN (Sized)) (["WellFounded","Prelude"])
    # LConstructor Prelude.WellFounded.Sized 65632 1

  # NS (UN (Skip)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Skip 24 0

  # NS (UN (Solve)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Solve 9 0

  # NS (UN (SourceFC)) (["Reflection","Language"])
    # LConstructor Language.Reflection.SourceFC 26 0

  # NS (UN (SourceLocation)) (["Reflection","Language"])
    # LConstructor Language.Reflection.SourceLocation 65633 0

  # NS (UN (Spawn)) (["SafeActors"])
    # LConstructor SafeActors.Spawn 3 0

  # NS (UN (SpecialName)) (["Reflection","Language"])
    # LConstructor Language.Reflection.SpecialName 65634 0

  # NS (UN (Stop)) (["Init","ElixirFFI"])
    # LConstructor ElixirFFI.Init.Stop 3 1

  # NS (UN (Str)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Str 4 0

  # NS (UN (StrCons)) (["Strings","Prelude"])
    # LConstructor Prelude.Strings.StrCons 1 1

  # NS (UN (StrM)) (["Strings","Prelude"])
    # LConstructor Prelude.Strings.StrM 65635 1

  # NS (UN (StrNil)) (["Strings","Prelude"])
    # LConstructor Prelude.Strings.StrNil 0 0

  # NS (UN (StrType)) (["Reflection","Language"])
    # LConstructor Language.Reflection.StrType 10 0

  # NS (UN (Stream)) (["Stream","Prelude"])
    # LConstructor Prelude.Stream.Stream 65636 1

  # NS (UN (StringBuffer)) (["Strings","Prelude"])
    # LConstructor Prelude.Strings.StringBuffer 65637 0

  # NS (UN (SubReport)) (["Reflection","Language"])
    # LConstructor Language.Reflection.SubReport 4 0

  # NS (UN (Subset)) (["Pairs","Prelude"])
    # LConstructor Prelude.Pairs.Subset 65638 2

  # UN (Symbol_)
    # LConstructor Symbol_ 65639 1

  # NS (UN (TCon)) (["Reflection","Language"])
    # LConstructor Language.Reflection.TCon 3 0

  # NS (UN (TConst)) (["Reflection","Language"])
    # LConstructor Language.Reflection.TConst 4 0

  # NS (UN (TT)) (["Reflection","Language"])
    # LConstructor Language.Reflection.TT 65640 0

  # NS (UN (TTName)) (["Reflection","Language"])
    # LConstructor Language.Reflection.TTName 65641 0

  # NS (UN (TTUExp)) (["Reflection","Language"])
    # LConstructor Language.Reflection.TTUExp 65642 0

  # NS (UN (TType)) (["Reflection","Language"])
    # LConstructor Language.Reflection.TType 6 0

  # NS (UN (Tactic)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Tactic 65643 0

  # NS (UN (TermPart)) (["Reflection","Language"])
    # LConstructor Language.Reflection.TermPart 2 0

  # NS (UN (TextPart)) (["Reflection","Language"])
    # LConstructor Language.Reflection.TextPart 0 0

  # UN (TheWorld)
    # LConstructor TheWorld 0 1

  # NS (UN (TheWorld)) (["Reflection","Language"])
    # LConstructor Language.Reflection.TheWorld 14 0

  # NS (UN (TooManyArguments)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.TooManyArguments 10 0

  # NS (UN (Traversable)) (["Traversable","Prelude"])
    # LConstructor Prelude.Traversable.Traversable 65644 1

  # NS (UN (Tree)) (["Main"])
    # LConstructor Main.Tree 65645 1

  # NS (UN (Trivial)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Trivial 6 0

  # NS (UN (True)) (["Bool","Prelude"])
    # LConstructor Prelude.Bool.True 1 0

  # NS (UN (Try)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Try 0 0

  # NS (UN (TyConArg)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.TyConArg 65646 0

  # NS (UN (TyConIndex)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.TyConIndex 1 0

  # NS (UN (TyConParameter)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.TyConParameter 0 0

  # NS (UN (TyDecl)) (["Elab","Reflection","Language"])
    # LConstructor Language.Reflection.Elab.TyDecl 65647 0

  # NS (UN (UN)) (["Reflection","Language"])
    # LConstructor Language.Reflection.UN 0 0

  # NS (UN (UPair)) (["Builtins"])
    # LConstructor Builtins.UPair 65648 2

  # NS (UN (UType)) (["Reflection","Language"])
    # LConstructor Language.Reflection.UType 7 0

  # NS (UN (UVal)) (["Reflection","Language"])
    # LConstructor Language.Reflection.UVal 1 0

  # NS (UN (UVar)) (["Reflection","Language"])
    # LConstructor Language.Reflection.UVar 0 0

  # NS (UN (Unfocus)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Unfocus 5 0

  # NS (UN (UnifyScope)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.UnifyScope 6 0

  # NS (UN (Uninhabited)) (["Uninhabited","Prelude"])
    # LConstructor Prelude.Uninhabited.Uninhabited 65649 1

  # NS (UN (UniqueType)) (["Reflection","Language"])
    # LConstructor Language.Reflection.UniqueType 1 0

  # UN (Unit)
    # LConstructor Unit 65650 0

  # NS (UN (Universe)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Universe 65651 0

  # NS (UN (UniverseError)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.UniverseError 23 0

  # NS (UN (UnknownImplicit)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.UnknownImplicit 26 0

  # NS (UN (User)) (["Show","Prelude"])
    # LConstructor Prelude.Show.User 4 1

  # NS (UN (V)) (["Reflection","Language"])
    # LConstructor Language.Reflection.V 1 0

  # NS (UN (Var)) (["Reflection","Language"])
    # LConstructor Language.Reflection.Var 0 0

  # UN (Void)
    # LConstructor Void 65652 0

  # NS (UN (VoidType)) (["Reflection","Language"])
    # LConstructor Language.Reflection.VoidType 11 0

  # NS (UN (WellFounded)) (["WellFounded","Prelude"])
    # LConstructor Prelude.WellFounded.WellFounded 65653 2

  # NS (UN (WhereN)) (["Reflection","Language"])
    # LConstructor Language.Reflection.WhereN 0 0

  # NS (UN (WithFnType)) (["Errors","Reflection","Language"])
    # LConstructor Language.Reflection.Errors.WithFnType 13 0

  # NS (UN (WithN)) (["Reflection","Language"])
    # LConstructor Language.Reflection.WithN 1 0

  # UN (World)
    # LConstructor World 65654 0

  # NS (UN (WorldType)) (["Reflection","Language"])
    # LConstructor Language.Reflection.WorldType 13 0

  # NS (UN (WriteTruncate)) (["File","Prelude"])
    # LConstructor Prelude.File.WriteTruncate 1 0

  # NS (UN (Yes)) (["Basics","Prelude"])
    # LConstructor Prelude.Basics.Yes 0 0

  # NS (UN (Z)) (["Nat","Prelude"])
    # LConstructor Prelude.Nat.Z 0 0


    # LFun [Inline] assert_unreachable [] ____

  # assert_unreachable
  # UN (assert_unreachable)
  def i_assert_unreachable(  ) do
    :idris_nothing
  end

    # LFun [Inline] call__IO [{e_0},{e_1},{e_2}] {e_2}(____)

  # call__IO
  # UN (call__IO)
  def i_call__IO( _e0, _e1, e2 ) do
    e2.( :idris_nothing )
  end

    # LFun [] ElixirFFI.gengencall [{e_0},{e_1},w] foreign{ FStr "Idrislib.Gengenserver.call"({e_0} : FCon ElxPtr_io, {e_1} : FCon ElxPtr_io) : FCon ElxPtr_io }

  # ElixirFFI.gengencall
  # NS (UN (gengencall)) (["ElixirFFI"])
  def i_ElixirFFI_d_gengencall( e0, e1, _i_w ) do
    Idrislib.Gengenserver.call( e0, e1 )
  end

    # LFun [] ElixirFFI.gengenserver [{e_0},{e_1},{e_2},{e_3},{e_4},{e_5},w] foreign{ FStr "Idrislib.Gengenserver.idris_start_link"(Builtins.MkPair({e_4}, {e_5}) : FCon ElxPtr_io) : FApp ElxPair_io [FCon Ptr,FCon Ptr,FCon ElxPtr_io,FCon ElxPtr_io] }

  # ElixirFFI.gengenserver
  # NS (UN (gengenserver)) (["ElixirFFI"])
  def i_ElixirFFI_d_gengenserver( _e0, _e1, _e2, _e3, e4, e5, _i_w ) do
    Idrislib.Gengenserver.idris_start_link( { e4 , e5 } )
  end

    # LFun [] Main.hc [{e_0}] case {e_0} of 
    # 	| ElixirFFI.HandleCall.MkReq({in_0}, {in_1}) => ElixirFFI.HandleCall.Reply({in_1}, LPlus (ATInt ITNative)({in_1}, {in_0}))

  # Main.hc
  # NS (UN (hc)) (["Main"])
  def i_Main_d_hc( e0 ) do
    aux1 =
      e0
    aux2 =
      case aux1 do
        {:MkReq, in0, in1} ->
            # ElixirFFI.HandleCall.Reply({in_1}, LPlus (ATInt ITNative)({in_1}, {in_0}))
            # 2
          {:Reply, in1, in1 + in0}
      end
    aux2
  end

    # LFun [Inline] idris_crash [] ____

  # idris_crash
  # UN (idris_crash)
  def i_idris_crash(  ) do
    :idris_nothing
  end

    # LFun [Inline] Prelude.Bool.ifThenElse [{e_0},{e_1},{e_2},{e_3}] case {e_1} of 
    # 	| Prelude.Bool.False() => force{ {e_3} }
    # 	| Prelude.Bool.True() => force{ {e_2} }

  # Prelude.Bool.ifThenElse
  # NS (UN (ifThenElse)) (["Bool","Prelude"])
  def i_Prelude_d_Bool_d_ifThenElse( _e0, e1, e2, e3 ) do
    aux1 =
      e1
    aux2 =
      case aux1 do
        false ->
          IdrisRts.force(e3)
        true ->
          IdrisRts.force(e2)
      end
    aux2
  end

    # LFun [Inline] Prelude.Interfaces.intToBool [{e_0}] case {e_0} of 
    # 	| 0 => Prelude.Bool.False()
    # 	| _ => Prelude.Bool.True()

  # Prelude.Interfaces.intToBool
  # NS (UN (intToBool)) (["Interfaces","Prelude"])
  def i_Prelude_d_Interfaces_d_intToBool( e0 ) do
    aux1 =
      e0
    aux2 =
      case aux1 do
        0 ->
            # Prelude.Bool.False()
            # 0
          false
        _ ->
            # Prelude.Bool.True()
            # 0
          true
      end
    aux2
  end

    # LFun [] io_bind [{e_0},{e_1},{e_2},{e_3},{e_4},w] {io_bind_2}({e_0}, {e_1}, {e_2}, {e_3}, {e_4}, w, {e_3}(w))

  # io_bind
  # UN (io_bind)
  def i_io_bind( e0, e1, e2, e3, e4, i_w ) do
    aux1 =
      io_bind2( e0, e1, e2, e3, e4, i_w )
    aux1.( e3.( i_w ) )
  end

    # LFun [Inline] {io_bind_2} [{e_0},{e_1},{e_2},{e_3},{e_4},w] {io_bind_1}({e_0}, {e_1}, {e_2}, {e_3}, {e_4}, w)

  # {io_bind_2}
  # MN (2) (io_bind)
  def io_bind2( e0, e1, e2, e3, e4, i_w ) do
    io_bind1_partial6( e0, e1, e2, e3, e4, i_w )
  end

    # LFun [Inline] {io_bind_1} [{e_0},{e_1},{e_2},{e_3},{e_4},w,{in_0}] {io_bind_0}({e_0}, {e_1}, {e_2}, {e_3}, {e_4}, w, {in_0}, w)

  # {io_bind_1}
  # MN (1) (io_bind)
  def io_bind1( e0, e1, e2, e3, e4, i_w, in0 ) do
    aux1 =
      io_bind0( e0, e1, e2, e3, e4, i_w, in0 )
    aux1.( i_w )
  end

    # LFun [Inline] {io_bind_0} [{e_0},{e_1},{e_2},{e_3},{e_4},w,{in_0}] {e_4}({in_0})

  # {io_bind_0}
  # MN (0) (io_bind)
  def io_bind0( _e0, _e1, _e2, _e3, e4, _i_w, in0 ) do
    e4.( in0 )
  end

    # LFun [Inline] io_pure [{e_0},{e_1},{e_2},w] {e_2}

  # io_pure
  # UN (io_pure)
  def i_io_pure( _e0, _e1, e2, _i_w ) do
    e2
  end

    # LFun [] Main.main [] io_bind(____, ____, ____, ElixirFFI.gengenserver(____, ____, ____, ____, Main.ssinit, Main.hc), Main.{main_15}())

  # Main.main
  # NS (UN (main)) (["Main"])
  def i_Main_d_main(  ) do
    aux2 =
      fn ( aux1 ) ->
        i_Main_d_ssinit( aux1 )
      end
    aux4 =
      fn ( aux3 ) ->
        i_Main_d_hc( aux3 )
      end
    i_io_bind_partial5( :idris_nothing, :idris_nothing, :idris_nothing, i_ElixirFFI_d_gengenserver_partial6( :idris_nothing, :idris_nothing, :idris_nothing, :idris_nothing, aux2, aux4 ), i_Main_d__lc_main_15_rc__partial0(  ) )
  end

    # LFun [Inline] Main.{main_15} [{in_0}] case {in_0} of 
    # 	| Builtins.MkPair({in_5}, {in_6}) => Prelude.Monad.>>=(____, Main.{main_3}(), ____, ____, Prelude.Interactive.putStr'(____, "spawned\n"), Main.{main_14}({in_6}))

  # Main.{main_15}
  # NS (MN (15) (main)) (["Main"])
  def i_Main_d__lc_main_15_rc_( in0 ) do
    aux1 =
      in0
    aux2 =
      case aux1 do
        { _in5 , in6 } ->
          aux3 =
            i_Prelude_d_Monad_d__gt__gt__eq_( :idris_nothing, i_Main_d__lc_main_3_rc__partial0(  ), :idris_nothing, :idris_nothing )
          aux3.( i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, "spawned\n" ) ).( i_Main_d__lc_main_14_rc__partial1( in6 ) )
      end
    aux2
  end

    # LFun [Inline] Main.{main_14} [{in_6},{in_7}] Prelude.Monad.>>=(____, Main.{main_7}(), ____, ____, Prelude.Interactive.putStr'(____, LStrConcat(Prelude.Show.primNumShow(____, prim__toStrInt, Prelude.Show.Open(), Main.sumTree(Main.Node(Main.Leaf(9), Main.Leaf(4)))), "\n")), Main.{main_13}({in_6}))

  # Main.{main_14}
  # NS (MN (14) (main)) (["Main"])
  def i_Main_d__lc_main_14_rc_( in6, _in7 ) do
    aux2 =
      fn ( aux1 ) ->
        i_prim__toStrInt( aux1 )
      end
      # Prelude.Show.Open()
      # 0
      # Main.Leaf(9)
      # 1
      # Main.Leaf(4)
      # 1
      # Main.Node(Main.Leaf(9), Main.Leaf(4))
      # 2
    aux3 =
      i_Prelude_d_Monad_d__gt__gt__eq_( :idris_nothing, i_Main_d__lc_main_7_rc__partial0(  ), :idris_nothing, :idris_nothing )
    aux3.( i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, i_Prelude_d_Show_d_primNumShow( :idris_nothing, aux2, :Open, i_Main_d_sumTree( {:Node, {:Leaf, 9}, {:Leaf, 4}} ) ) <> "\n" ) ).( i_Main_d__lc_main_13_rc__partial1( in6 ) )
  end

    # LFun [Inline] Main.{main_13} [{in_6},{in_8}] Prelude.Monad.>>=(____, Main.{main_11}(), ____, ____, ElixirFFI.gengencall({in_6}, 2), Main.{main_12}())

  # Main.{main_13}
  # NS (MN (13) (main)) (["Main"])
  def i_Main_d__lc_main_13_rc_( in6, _in8 ) do
    aux1 =
      i_Prelude_d_Monad_d__gt__gt__eq_( :idris_nothing, i_Main_d__lc_main_11_rc__partial0(  ), :idris_nothing, :idris_nothing )
    aux1.( i_ElixirFFI_d_gengencall_partial2( in6, 2 ) ).( i_Main_d__lc_main_12_rc__partial0(  ) )
  end

    # LFun [Inline] Main.{main_12} [{in_9}] Prelude.Interactive.putStr'(____, "yoyo\n")

  # Main.{main_12}
  # NS (MN (12) (main)) (["Main"])
  def i_Main_d__lc_main_12_rc_( _in9 ) do
    i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, "yoyo\n" )
  end

    # LFun [Inline] Main.{main_11} [{in_1}] Main.{main_10}()

  # Main.{main_11}
  # NS (MN (11) (main)) (["Main"])
  def i_Main_d__lc_main_11_rc_( _in1 ) do
    i_Main_d__lc_main_10_rc__partial0(  )
  end

    # LFun [Inline] Main.{main_10} [{in_2}] Main.{main_9}()

  # Main.{main_10}
  # NS (MN (10) (main)) (["Main"])
  def i_Main_d__lc_main_10_rc_( _in2 ) do
    i_Main_d__lc_main_9_rc__partial0(  )
  end

    # LFun [Inline] Main.{main_9} [{in_3}] Main.{main_8}({in_3})

  # Main.{main_9}
  # NS (MN (9) (main)) (["Main"])
  def i_Main_d__lc_main_9_rc_( in3 ) do
    i_Main_d__lc_main_8_rc__partial1( in3 )
  end

    # LFun [Inline] Main.{main_8} [{in_3},{in_4}] io_bind(____, ____, ____, {in_3}, {in_4})

  # Main.{main_8}
  # NS (MN (8) (main)) (["Main"])
  def i_Main_d__lc_main_8_rc_( in3, in4 ) do
    i_io_bind_partial5( :idris_nothing, :idris_nothing, :idris_nothing, in3, in4 )
  end

    # LFun [Inline] Main.{main_7} [{in_1}] Main.{main_6}()

  # Main.{main_7}
  # NS (MN (7) (main)) (["Main"])
  def i_Main_d__lc_main_7_rc_( _in1 ) do
    i_Main_d__lc_main_6_rc__partial0(  )
  end

    # LFun [Inline] Main.{main_6} [{in_2}] Main.{main_5}()

  # Main.{main_6}
  # NS (MN (6) (main)) (["Main"])
  def i_Main_d__lc_main_6_rc_( _in2 ) do
    i_Main_d__lc_main_5_rc__partial0(  )
  end

    # LFun [Inline] Main.{main_5} [{in_3}] Main.{main_4}({in_3})

  # Main.{main_5}
  # NS (MN (5) (main)) (["Main"])
  def i_Main_d__lc_main_5_rc_( in3 ) do
    i_Main_d__lc_main_4_rc__partial1( in3 )
  end

    # LFun [Inline] Main.{main_4} [{in_3},{in_4}] io_bind(____, ____, ____, {in_3}, {in_4})

  # Main.{main_4}
  # NS (MN (4) (main)) (["Main"])
  def i_Main_d__lc_main_4_rc_( in3, in4 ) do
    i_io_bind_partial5( :idris_nothing, :idris_nothing, :idris_nothing, in3, in4 )
  end

    # LFun [Inline] Main.{main_3} [{in_1}] Main.{main_2}()

  # Main.{main_3}
  # NS (MN (3) (main)) (["Main"])
  def i_Main_d__lc_main_3_rc_( _in1 ) do
    i_Main_d__lc_main_2_rc__partial0(  )
  end

    # LFun [Inline] Main.{main_2} [{in_2}] Main.{main_1}()

  # Main.{main_2}
  # NS (MN (2) (main)) (["Main"])
  def i_Main_d__lc_main_2_rc_( _in2 ) do
    i_Main_d__lc_main_1_rc__partial0(  )
  end

    # LFun [Inline] Main.{main_1} [{in_3}] Main.{main_0}({in_3})

  # Main.{main_1}
  # NS (MN (1) (main)) (["Main"])
  def i_Main_d__lc_main_1_rc_( in3 ) do
    i_Main_d__lc_main_0_rc__partial1( in3 )
  end

    # LFun [Inline] Main.{main_0} [{in_3},{in_4}] io_bind(____, ____, ____, {in_3}, {in_4})

  # Main.{main_0}
  # NS (MN (0) (main)) (["Main"])
  def i_Main_d__lc_main_0_rc_( in3, in4 ) do
    i_io_bind_partial5( :idris_nothing, :idris_nothing, :idris_nothing, in3, in4 )
  end

    # LFun [Inline] mkForeignPrim [] ____

  # mkForeignPrim
  # UN (mkForeignPrim)
  def i_mkForeignPrim(  ) do
    :idris_nothing
  end

    # LFun [Inline] Prelude.Bool.not [{e_0}] case {e_0} of 
    # 	| Prelude.Bool.False() => Prelude.Bool.True()
    # 	| Prelude.Bool.True() => Prelude.Bool.False()

  # Prelude.Bool.not
  # NS (UN (not)) (["Bool","Prelude"])
  def i_Prelude_d_Bool_d_not( e0 ) do
    aux1 =
      e0
    aux2 =
      case aux1 do
        false ->
            # Prelude.Bool.True()
            # 0
          true
        true ->
            # Prelude.Bool.False()
            # 0
          false
      end
    aux2
  end

    # LFun [] Prelude.Show.precCon [{e_0}] case {e_0} of 
    # 	| Prelude.Show.App() => 6
    # 	| Prelude.Show.Backtick() => 3
    # 	| Prelude.Show.Dollar() => 2
    # 	| Prelude.Show.Eq() => 1
    # 	| Prelude.Show.Open() => 0
    # 	| Prelude.Show.PrefixMinus() => 5
    # 	| Prelude.Show.User({in_0}) => 4

  # Prelude.Show.precCon
  # NS (UN (precCon)) (["Show","Prelude"])
  def i_Prelude_d_Show_d_precCon( e0 ) do
    aux1 =
      e0
    aux2 =
      case aux1 do
        :App ->
          6
        :Backtick ->
          3
        :Dollar ->
          2
        :Eq ->
          1
        :Open ->
          0
        :PrefixMinus ->
          5
        {:User, _in0} ->
          4
      end
    aux2
  end

    # LFun [] Prelude.Show.primNumShow [{e_0},{e_1},{e_2},{e_3}] let {in_0} = {e_1}({e_3}) in case case Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method >=({e_2}, Prelude.Show.PrefixMinus()) of 
    # 	| Prelude.Bool.False() => Prelude.Bool.False()
    # 	| Prelude.Bool.True() => force{ Prelude.Show.{primNumShow_2}|({in_0}, {e_0}, {e_1}, {e_2}, {e_3}) } of 
    # 	| Prelude.Bool.False() => {in_0}
    # 	| Prelude.Bool.True() => LStrConcat("(", LStrConcat({in_0}, ")"))

  # Prelude.Show.primNumShow
  # NS (UN (primNumShow)) (["Show","Prelude"])
  def i_Prelude_d_Show_d_primNumShow( e0, e1, e2, e3 ) do
    in0 =
      e1.( e3 )
      # Prelude.Show.PrefixMinus()
      # 0
    aux2 =
      i_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__gt__eq_( e2, :PrefixMinus )
    aux3 =
      case aux2 do
        false ->
            # Prelude.Bool.False()
            # 0
          false
        true ->
          i_Prelude_d_Show_d__lc_primNumShow_2_rc_( in0, e0, e1, e2, e3 )
      end
    aux1 =
      aux3
    aux4 =
      case aux1 do
        false ->
          in0
        true ->
          "(" <> in0 <> ")"
      end
    aux4
  end

    # LFun [NoInline] Prelude.Show.{primNumShow_2} [{in_0},{e_0},{e_1},{e_2},{e_3}] case Prelude.Strings.strM({in_0}) of 
    # 	| Prelude.Strings.StrCons({in_2}) => Prelude.Show.{primNumShow_1}({e_0}, {e_1}, {e_2}, {e_3}, {in_0}, {in_2}, {in_2})
    # 	| Prelude.Strings.StrNil() => Prelude.Bool.False()

  # Prelude.Show.{primNumShow_2}
  # NS (MN (2) (primNumShow)) (["Show","Prelude"])
  def i_Prelude_d_Show_d__lc_primNumShow_2_rc_( in0, e0, e1, e2, e3 ) do
    aux1 =
      i_Prelude_d_Strings_d_strM( in0 )
    aux2 =
      case aux1 do
        {:StrCons, in2} ->
          aux3 =
            i_Prelude_d_Show_d__lc_primNumShow_1_rc_( e0, e1, e2, e3, in0, in2 )
          aux3.( in2 )
        :StrNil ->
            # Prelude.Bool.False()
            # 0
          false
      end
    aux2
  end

    # LFun [Inline] Prelude.Show.{primNumShow_1} [{e_0},{e_1},{e_2},{e_3},{in_0},{in_2}] Prelude.Show.{primNumShow_0}()

  # Prelude.Show.{primNumShow_1}
  # NS (MN (1) (primNumShow)) (["Show","Prelude"])
  def i_Prelude_d_Show_d__lc_primNumShow_1_rc_( _e0, _e1, _e2, _e3, _in0, _in2 ) do
    i_Prelude_d_Show_d__lc_primNumShow_0_rc__partial0(  )
  end

    # LFun [Inline] Prelude.Show.{primNumShow_0} [{in_1}] case LEq (ATInt ITChar)({in_1}, '-') of 
    # 	| 0 => Prelude.Bool.False()
    # 	| _ => Prelude.Bool.True()

  # Prelude.Show.{primNumShow_0}
  # NS (MN (0) (primNumShow)) (["Show","Prelude"])
  def i_Prelude_d_Show_d__lc_primNumShow_0_rc_( in1 ) do
    aux1 =
      if ( in1 == '-' ) do
          # Prelude.Bool.True()
          # 0
        true
      else
          # Prelude.Bool.False()
          # 0
        false
      end
    aux1
  end

    # LFun [] prim__addInt [{op_0},{op_1}] LPlus (ATInt ITNative)({op_0}, {op_1})

  # prim__addInt
  # UN (prim__addInt)
  def i_prim__addInt( op0, op1 ) do
    op0 + op1
  end

    # LFun [] prim__asPtr [{op_0}] LExternal prim__asPtr({op_0})

  # prim__asPtr
  # UN (prim__asPtr)
  def i_prim__asPtr( op0 ) do
    op0
  end

    # LFun [] prim__concat [{op_0},{op_1}] LStrConcat({op_0}, {op_1})

  # prim__concat
  # UN (prim__concat)
  def i_prim__concat( op0, op1 ) do
    op0 <> op1
  end

    # LFun [] prim__eqBigInt [{op_0},{op_1}] LEq (ATInt ITBig)({op_0}, {op_1})

  # prim__eqBigInt
  # UN (prim__eqBigInt)
  def i_prim__eqBigInt( op0, op1 ) do
    op0 == op1
  end

    # LFun [] prim__eqChar [{op_0},{op_1}] LEq (ATInt ITChar)({op_0}, {op_1})

  # prim__eqChar
  # UN (prim__eqChar)
  def i_prim__eqChar( op0, op1 ) do
    op0 == op1
  end

    # LFun [] prim__eqManagedPtr [{op_0},{op_1}] LExternal prim__eqManagedPtr({op_0}, {op_1})

  # prim__eqManagedPtr
  # UN (prim__eqManagedPtr)
  def i_prim__eqManagedPtr( op0, op1 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__eqManagedPtr" <> Kernel.inspect(op0) <> Kernel.inspect(op1) )
  end

    # LFun [] prim__eqPtr [{op_0},{op_1}] LExternal prim__eqPtr({op_0}, {op_1})

  # prim__eqPtr
  # UN (prim__eqPtr)
  def i_prim__eqPtr( op0, op1 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__eqPtr" <> Kernel.inspect(op0) <> Kernel.inspect(op1) )
  end

    # LFun [] prim__eqString [{op_0},{op_1}] LStrEq({op_0}, {op_1})

  # prim__eqString
  # UN (prim__eqString)
  def i_prim__eqString( op0, op1 ) do
    op0 == op1
  end

    # LFun [] prim__null [] LExternal prim__null()

  # prim__null
  # UN (prim__null)
  def i_prim__null(  ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__null")
  end

    # LFun [] prim__peek16 [{op_0},{op_1},{op_2}] LExternal prim__peek16({op_0}, {op_1}, {op_2})

  # prim__peek16
  # UN (prim__peek16)
  def i_prim__peek16( op0, op1, op2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peek16" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) )
  end

    # LFun [] prim__peek32 [{op_0},{op_1},{op_2}] LExternal prim__peek32({op_0}, {op_1}, {op_2})

  # prim__peek32
  # UN (prim__peek32)
  def i_prim__peek32( op0, op1, op2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peek32" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) )
  end

    # LFun [] prim__peek64 [{op_0},{op_1},{op_2}] LExternal prim__peek64({op_0}, {op_1}, {op_2})

  # prim__peek64
  # UN (prim__peek64)
  def i_prim__peek64( op0, op1, op2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peek64" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) )
  end

    # LFun [] prim__peek8 [{op_0},{op_1},{op_2}] LExternal prim__peek8({op_0}, {op_1}, {op_2})

  # prim__peek8
  # UN (prim__peek8)
  def i_prim__peek8( op0, op1, op2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peek8" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) )
  end

    # LFun [] prim__peekDouble [{op_0},{op_1},{op_2}] LExternal prim__peekDouble({op_0}, {op_1}, {op_2})

  # prim__peekDouble
  # UN (prim__peekDouble)
  def i_prim__peekDouble( op0, op1, op2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peekDouble" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) )
  end

    # LFun [] prim__peekPtr [{op_0},{op_1},{op_2}] LExternal prim__peekPtr({op_0}, {op_1}, {op_2})

  # prim__peekPtr
  # UN (prim__peekPtr)
  def i_prim__peekPtr( op0, op1, op2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peekPtr" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) )
  end

    # LFun [] prim__peekSingle [{op_0},{op_1},{op_2}] LExternal prim__peekSingle({op_0}, {op_1}, {op_2})

  # prim__peekSingle
  # UN (prim__peekSingle)
  def i_prim__peekSingle( op0, op1, op2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peekSingle" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) )
  end

    # LFun [] prim__poke16 [{op_0},{op_1},{op_2},{op_3}] LExternal prim__poke16({op_0}, {op_1}, {op_2}, {op_3})

  # prim__poke16
  # UN (prim__poke16)
  def i_prim__poke16( op0, op1, op2, op3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__poke16" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) <> Kernel.inspect(op3) )
  end

    # LFun [] prim__poke32 [{op_0},{op_1},{op_2},{op_3}] LExternal prim__poke32({op_0}, {op_1}, {op_2}, {op_3})

  # prim__poke32
  # UN (prim__poke32)
  def i_prim__poke32( op0, op1, op2, op3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__poke32" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) <> Kernel.inspect(op3) )
  end

    # LFun [] prim__poke64 [{op_0},{op_1},{op_2},{op_3}] LExternal prim__poke64({op_0}, {op_1}, {op_2}, {op_3})

  # prim__poke64
  # UN (prim__poke64)
  def i_prim__poke64( op0, op1, op2, op3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__poke64" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) <> Kernel.inspect(op3) )
  end

    # LFun [] prim__poke8 [{op_0},{op_1},{op_2},{op_3}] LExternal prim__poke8({op_0}, {op_1}, {op_2}, {op_3})

  # prim__poke8
  # UN (prim__poke8)
  def i_prim__poke8( op0, op1, op2, op3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__poke8" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) <> Kernel.inspect(op3) )
  end

    # LFun [] prim__pokeDouble [{op_0},{op_1},{op_2},{op_3}] LExternal prim__pokeDouble({op_0}, {op_1}, {op_2}, {op_3})

  # prim__pokeDouble
  # UN (prim__pokeDouble)
  def i_prim__pokeDouble( op0, op1, op2, op3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__pokeDouble" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) <> Kernel.inspect(op3) )
  end

    # LFun [] prim__pokePtr [{op_0},{op_1},{op_2},{op_3}] LExternal prim__pokePtr({op_0}, {op_1}, {op_2}, {op_3})

  # prim__pokePtr
  # UN (prim__pokePtr)
  def i_prim__pokePtr( op0, op1, op2, op3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__pokePtr" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) <> Kernel.inspect(op3) )
  end

    # LFun [] prim__pokeSingle [{op_0},{op_1},{op_2},{op_3}] LExternal prim__pokeSingle({op_0}, {op_1}, {op_2}, {op_3})

  # prim__pokeSingle
  # UN (prim__pokeSingle)
  def i_prim__pokeSingle( op0, op1, op2, op3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__pokeSingle" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) <> Kernel.inspect(op3) )
  end

    # LFun [] prim__ptrOffset [{op_0},{op_1}] LExternal prim__ptrOffset({op_0}, {op_1})

  # prim__ptrOffset
  # UN (prim__ptrOffset)
  def i_prim__ptrOffset( op0, op1 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__ptrOffset" <> Kernel.inspect(op0) <> Kernel.inspect(op1) )
  end

    # LFun [] prim__readChars [{op_0},{op_1},{op_2}] LExternal prim__readChars({op_0}, {op_1}, {op_2})

  # prim__readChars
  # UN (prim__readChars)
  def i_prim__readChars( op0, op1, op2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__readChars" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) )
  end

    # LFun [] prim__readFile [{op_0},{op_1}] LExternal prim__readFile({op_0}, {op_1})

  # prim__readFile
  # UN (prim__readFile)
  def i_prim__readFile( op0, op1 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__readFile" <> Kernel.inspect(op0) <> Kernel.inspect(op1) )
  end

    # LFun [] prim__registerPtr [{op_0},{op_1}] LExternal prim__registerPtr({op_0}, {op_1})

  # prim__registerPtr
  # UN (prim__registerPtr)
  def i_prim__registerPtr( op0, op1 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__registerPtr" <> Kernel.inspect(op0) <> Kernel.inspect(op1) )
  end

    # LFun [] prim__sizeofPtr [] LExternal prim__sizeofPtr()

  # prim__sizeofPtr
  # UN (prim__sizeofPtr)
  def i_prim__sizeofPtr(  ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__sizeofPtr")
  end

    # LFun [] prim__sltBigInt [{op_0},{op_1}] LSLt (ATInt ITBig)({op_0}, {op_1})

  # prim__sltBigInt
  # UN (prim__sltBigInt)
  def i_prim__sltBigInt( op0, op1 ) do
    op0 < op1
  end

    # LFun [] prim__stderr [] LExternal prim__stderr()

  # prim__stderr
  # UN (prim__stderr)
  def i_prim__stderr(  ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__stderr")
  end

    # LFun [] prim__stdin [] LExternal prim__stdin()

  # prim__stdin
  # UN (prim__stdin)
  def i_prim__stdin(  ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__stdin")
  end

    # LFun [] prim__stdout [] LExternal prim__stdout()

  # prim__stdout
  # UN (prim__stdout)
  def i_prim__stdout(  ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__stdout")
  end

    # LFun [] prim__strHead [{op_0}] LStrHead({op_0})

  # prim__strHead
  # UN (prim__strHead)
  def i_prim__strHead( op0 ) do
    String.first(op0)
  end

    # LFun [] prim__toStrInt [{op_0}] LIntStr ITNative({op_0})

  # prim__toStrInt
  # UN (prim__toStrInt)
  def i_prim__toStrInt( op0 ) do
    to_string( op0 )
  end

    # LFun [] prim__vm [{op_0}] LExternal prim__vm({op_0})

  # prim__vm
  # UN (prim__vm)
  def i_prim__vm( op0 ) do
    op0
  end

    # LFun [] prim__writeFile [{op_0},{op_1},{op_2}] LExternal prim__writeFile({op_0}, {op_1}, {op_2})

  # prim__writeFile
  # UN (prim__writeFile)
  def i_prim__writeFile( op0, op1, op2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__writeFile" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) )
  end

    # LFun [] prim__writeString [{op_0},{op_1}] LWriteStr({op_0}, {op_1})

  # prim__writeString
  # UN (prim__writeString)
  def i_prim__writeString( op0, op1 ) do
    IO.puts( op1 )
  end

    # LFun [Inline] prim_io_bind [{e_0},{e_1},{e_2},{e_3}] {e_3}({e_2})

  # prim_io_bind
  # UN (prim_io_bind)
  def i_prim_io_bind( _e0, _e1, e2, e3 ) do
    e3.( e2 )
  end

    # LFun [] prim_write [{e_0},{e_1},w] LWriteStr(w, {e_1})

  # prim_write
  # UN (prim_write)
  def i_prim_write( _e0, e1, i_w ) do
    IO.puts( e1 )
  end

    # LFun [] Prelude.Interactive.putStr' [{e_0},{e_1}] io_bind(____, ____, ____, prim_write(____, {e_1}), Prelude.Interactive.{putStr'_0}())

  # Prelude.Interactive.putStr'
  # NS (UN (putStr')) (["Interactive","Prelude"])
  def i_Prelude_d_Interactive_d_putStr_prime_( _e0, e1 ) do
    i_io_bind_partial5( :idris_nothing, :idris_nothing, :idris_nothing, i_prim_write_partial2( :idris_nothing, e1 ), i_Prelude_d_Interactive_d__lc_putStr_prime__0_rc__partial0(  ) )
  end

    # LFun [Inline] Prelude.Interactive.{putStr'_0} [{in_0}] io_pure(____, ____, MkUnit())

  # Prelude.Interactive.{putStr'_0}
  # NS (MN (0) (putStr')) (["Interactive","Prelude"])
  def i_Prelude_d_Interactive_d__lc_putStr_prime__0_rc_( _in0 ) do
      # MkUnit()
      # 0
    i_io_pure_partial3( :idris_nothing, :idris_nothing, {} )
  end

    # LFun [Inline] run__IO [{e_0},{e_1}] {e_1}(____)

  # run__IO
  # UN (run__IO)
  def i_run__IO( _e0, e1 ) do
    e1.( :idris_nothing )
  end

    # LFun [Inline] Prelude.Show.showParens [{e_0},{e_1}] case {e_0} of 
    # 	| Prelude.Bool.False() => {e_1}
    # 	| Prelude.Bool.True() => LStrConcat("(", LStrConcat({e_1}, ")"))

  # Prelude.Show.showParens
  # NS (UN (showParens)) (["Show","Prelude"])
  def i_Prelude_d_Show_d_showParens( e0, e1 ) do
    aux1 =
      e0
    aux2 =
      case aux1 do
        false ->
          e1
        true ->
          "(" <> e1 <> ")"
      end
    aux2
  end

    # LFun [Inline] Main.ssinit [{e_0}] ElixirFFI.Init.Ok(0)

  # Main.ssinit
  # NS (UN (ssinit)) (["Main"])
  def i_Main_d_ssinit( _e0 ) do
      # ElixirFFI.Init.Ok(0)
      # 1
    {:Ok, 0}
  end

    # LFun [] Prelude.Strings.strM [{e_0}] case Decidable.Equality.Decidable.Equality.Bool implementation of Decidable.Equality.DecEq, method decEq(case case LStrEq({e_0}, "") of 
    # 	| 0 => Prelude.Bool.False()
    # 	| _ => Prelude.Bool.True() of 
    # 	| Prelude.Bool.False() => Prelude.Bool.True()
    # 	| Prelude.Bool.True() => Prelude.Bool.False(), Prelude.Bool.True()) of 
    # 	| Prelude.Basics.No() => Prelude.Strings.StrNil()
    # 	| Prelude.Basics.Yes() => Prelude.Strings.StrCons(LStrHead({e_0}))

  # Prelude.Strings.strM
  # NS (UN (strM)) (["Strings","Prelude"])
  def i_Prelude_d_Strings_d_strM( e0 ) do
    aux3 =
      if ( e0 == "" ) do
          # Prelude.Bool.True()
          # 0
        true
      else
          # Prelude.Bool.False()
          # 0
        false
      end
    aux2 =
      aux3
    aux4 =
      case aux2 do
        false ->
            # Prelude.Bool.True()
            # 0
          true
        true ->
            # Prelude.Bool.False()
            # 0
          false
      end
      # Prelude.Bool.True()
      # 0
    aux1 =
      i_Decidable_d_Equality_d_Decidable_d_Equality_d_Bool_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq( aux4, true )
    aux5 =
      case aux1 do
        :No ->
            # Prelude.Strings.StrNil()
            # 0
          :StrNil
        :Yes ->
            # Prelude.Strings.StrCons(LStrHead({e_0}))
            # 1
          {:StrCons, String.first(e0)}
      end
    aux5
  end

    # LFun [] Main.sumTree [{e_0}] case {e_0} of 
    # 	| Main.Leaf({in_0}) => {in_0}
    # 	| Main.Node({in_1}, {in_2}) => LPlus (ATInt ITNative)(Main.sumTree({in_1}), Main.sumTree({in_2}))

  # Main.sumTree
  # NS (UN (sumTree)) (["Main"])
  def i_Main_d_sumTree( e0 ) do
    aux1 =
      e0
    aux2 =
      case aux1 do
        {:Leaf, in0} ->
          in0
        {:Node, in1, in2} ->
          i_Main_d_sumTree( in1 ) + i_Main_d_sumTree( in2 )
      end
    aux2
  end

    # LFun [Inline] unsafePerformPrimIO [] ____

  # unsafePerformPrimIO
  # UN (unsafePerformPrimIO)
  def i_unsafePerformPrimIO(  ) do
    :idris_nothing
  end

    # LFun [Inline] world [{e_0}] {e_0}

  # world
  # UN (world)
  def i_world( e0 ) do
    e0
  end

    # LFun [Inline] Prelude.Bool.|| [{e_0},{e_1}] case {e_0} of 
    # 	| Prelude.Bool.False() => force{ {e_1} }
    # 	| Prelude.Bool.True() => Prelude.Bool.True()

  # Prelude.Bool.||
  # NS (UN (||)) (["Bool","Prelude"])
  def i_Prelude_d_Bool_d__124__124_( e0, e1 ) do
    aux1 =
      e0
    aux2 =
      case aux1 do
        false ->
          IdrisRts.force(e1)
        true ->
            # Prelude.Bool.True()
            # 0
          true
      end
    aux2
  end
  # MN (0) (__Infer)
    # LConstructor {__Infer_0} 65655 0

  # MN (0) (__infer)
    # LConstructor {__infer_0} 0 0


    # LFun [Inline] Decidable.Equality.Decidable.Equality.Char implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq [] ____

  # Decidable.Equality.Decidable.Equality.Char implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
  # SN (Decidable.Equality.Decidable.Equality.Char implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq)
  def i_Decidable_d_Equality_d_Decidable_d_Equality_d_Char_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq_c__s_primitiveNotEq(  ) do
    :idris_nothing
  end

    # LFun [Inline] Decidable.Equality.Decidable.Equality.Int implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq [] ____

  # Decidable.Equality.Decidable.Equality.Int implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
  # SN (Decidable.Equality.Decidable.Equality.Int implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq)
  def i_Decidable_d_Equality_d_Decidable_d_Equality_d_Int_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq_c__s_primitiveNotEq(  ) do
    :idris_nothing
  end

    # LFun [Inline] Decidable.Equality.Decidable.Equality.Integer implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq [] ____

  # Decidable.Equality.Decidable.Equality.Integer implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
  # SN (Decidable.Equality.Decidable.Equality.Integer implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq)
  def i_Decidable_d_Equality_d_Decidable_d_Equality_d_Integer_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq_c__s_primitiveNotEq(  ) do
    :idris_nothing
  end

    # LFun [Inline] Decidable.Equality.Decidable.Equality.ManagedPtr implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq [] ____

  # Decidable.Equality.Decidable.Equality.ManagedPtr implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
  # SN (Decidable.Equality.Decidable.Equality.ManagedPtr implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq)
  def i_Decidable_d_Equality_d_Decidable_d_Equality_d_ManagedPtr_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq_c__s_primitiveNotEq(  ) do
    :idris_nothing
  end

    # LFun [Inline] Decidable.Equality.Decidable.Equality.Ptr implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq [] ____

  # Decidable.Equality.Decidable.Equality.Ptr implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
  # SN (Decidable.Equality.Decidable.Equality.Ptr implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq)
  def i_Decidable_d_Equality_d_Decidable_d_Equality_d_Ptr_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq_c__s_primitiveNotEq(  ) do
    :idris_nothing
  end

    # LFun [Inline] Decidable.Equality.Decidable.Equality.String implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq [] ____

  # Decidable.Equality.Decidable.Equality.String implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
  # SN (Decidable.Equality.Decidable.Equality.String implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq)
  def i_Decidable_d_Equality_d_Decidable_d_Equality_d_String_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq_c__s_primitiveNotEq(  ) do
    :idris_nothing
  end

    # LFun [] Decidable.Equality.Decidable.Equality.Bool implementation of Decidable.Equality.DecEq, method decEq [{e_0},{e_1}] case {e_1} of 
    # 	| Prelude.Bool.False() => case {e_0} of 
    # 	.   | Prelude.Bool.False() => Prelude.Basics.Yes()
    # 	.   | Prelude.Bool.True() => Prelude.Basics.No()
    # 	| Prelude.Bool.True() => case {e_0} of 
    # 	    | Prelude.Bool.False() => Prelude.Basics.No()
    # 	    | Prelude.Bool.True() => Prelude.Basics.Yes()

  # Decidable.Equality.Decidable.Equality.Bool implementation of Decidable.Equality.DecEq, method decEq
  # NS (SN (Decidable.Equality.Bool implementation of Decidable.Equality.DecEq, method decEq)) (["Equality","Decidable"])
  def i_Decidable_d_Equality_d_Decidable_d_Equality_d_Bool_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq( e0, e1 ) do
    aux1 =
      e1
    aux2 =
      case aux1 do
        false ->
          aux3 =
            e0
          aux4 =
            case aux3 do
              false ->
                  # Prelude.Basics.Yes()
                  # 0
                :Yes
              true ->
                  # Prelude.Basics.No()
                  # 0
                :No
            end
          aux4
        true ->
          aux5 =
            e0
          aux6 =
            case aux5 do
              false ->
                  # Prelude.Basics.No()
                  # 0
                :No
              true ->
                  # Prelude.Basics.Yes()
                  # 0
                :Yes
            end
          aux6
      end
    aux2
  end

    # LFun [] Prelude.Interfaces.Prelude.Nat.Nat implementation of Prelude.Interfaces.Eq, method == [{e_0},{e_1}] case {e_1} of 
    # 	| 0 => case {e_0} of 
    # 	.   | 0 => Prelude.Bool.True()
    # 	.   | _ => Prelude.Bool.False()
    # 	| _ => let {in_0} = LMinus (ATInt ITBig)({e_1}, 1) in case {e_0} of 
    # 	.   | 0 => Prelude.Bool.False()
    # 	.   | _ => let {in_1} = LMinus (ATInt ITBig)({e_0}, 1) in Prelude.Interfaces.Prelude.Nat.Nat implementation of Prelude.Interfaces.Eq, method ==({in_1}, {in_0})
    # 	| _ => Prelude.Bool.False()

  # Prelude.Interfaces.Prelude.Nat.Nat implementation of Prelude.Interfaces.Eq, method ==
  # NS (SN (Prelude.Nat.Nat implementation of Prelude.Interfaces.Eq, method ==)) (["Interfaces","Prelude"])
  def i_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Eq_c__s_method_s__eq__eq_( e0, e1 ) do
    aux1 =
      e1
    aux2 =
      case aux1 do
        0 ->
          aux3 =
            e0
          aux4 =
            case aux3 do
              0 ->
                  # Prelude.Bool.True()
                  # 0
                true
              _ ->
                  # Prelude.Bool.False()
                  # 0
                false
            end
          aux4
        _ ->
          in0 =
            e1 - 1
          aux5 =
            e0
          aux6 =
            case aux5 do
              0 ->
                  # Prelude.Bool.False()
                  # 0
                false
              _ ->
                in1 =
                  e0 - 1
                i_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Eq_c__s_method_s__eq__eq_( in1, in0 )
            end
          aux6
        _ ->
            # Prelude.Bool.False()
            # 0
          false
      end
    aux2
  end

    # LFun [] Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Eq, method == [{e_0},{e_1}] case {e_1} of 
    # 	| Prelude.Show.User({in_0}) => case {e_0} of 
    # 	.   | Prelude.Show.User({in_1}) => Prelude.Interfaces.Prelude.Nat.Nat implementation of Prelude.Interfaces.Eq, method ==({in_1}, {in_0})
    # 	.   | _ => case LEq (ATInt ITBig)(Prelude.Show.precCon({e_0}), Prelude.Show.precCon({e_1})) of 
    # 	.       | 0 => Prelude.Bool.False()
    # 	.       | _ => Prelude.Bool.True()
    # 	| _ => case LEq (ATInt ITBig)(Prelude.Show.precCon({e_0}), Prelude.Show.precCon({e_1})) of 
    # 	    | 0 => Prelude.Bool.False()
    # 	    | _ => Prelude.Bool.True()

  # Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Eq, method ==
  # NS (SN (Prelude.Show.Prec implementation of Prelude.Interfaces.Eq, method ==)) (["Interfaces","Prelude"])
  def i_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Eq_c__s_method_s__eq__eq_( e0, e1 ) do
    aux1 =
      e1
    aux2 =
      case aux1 do
        {:User, in0} ->
          aux3 =
            e0
          aux4 =
            case aux3 do
              {:User, in1} ->
                i_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Eq_c__s_method_s__eq__eq_( in1, in0 )
              _ ->
                aux5 =
                  if ( i_Prelude_d_Show_d_precCon( e0 ) == i_Prelude_d_Show_d_precCon( e1 ) ) do
                      # Prelude.Bool.True()
                      # 0
                    true
                  else
                      # Prelude.Bool.False()
                      # 0
                    false
                  end
                aux5
            end
          aux4
        _ ->
          aux6 =
            if ( i_Prelude_d_Show_d_precCon( e0 ) == i_Prelude_d_Show_d_precCon( e1 ) ) do
                # Prelude.Bool.True()
                # 0
              true
            else
                # Prelude.Bool.False()
                # 0
              false
            end
          aux6
      end
    aux2
  end

    # LFun [] Prelude.Interfaces.Prelude.Interfaces.Integer implementation of Prelude.Interfaces.Ord, method compare [{e_0},{e_1}] case case LEq (ATInt ITBig)({e_0}, {e_1}) of 
    # 	| 0 => Prelude.Bool.False()
    # 	| _ => Prelude.Bool.True() of 
    # 	| Prelude.Bool.False() => case case LSLt (ATInt ITBig)({e_0}, {e_1}) of 
    # 	.   | 0 => Prelude.Bool.False()
    # 	.   | _ => Prelude.Bool.True() of 
    # 	.   | Prelude.Bool.False() => Prelude.Interfaces.GT()
    # 	.   | Prelude.Bool.True() => Prelude.Interfaces.LT()
    # 	| Prelude.Bool.True() => Prelude.Interfaces.EQ()

  # Prelude.Interfaces.Prelude.Interfaces.Integer implementation of Prelude.Interfaces.Ord, method compare
  # NS (SN (Prelude.Interfaces.Integer implementation of Prelude.Interfaces.Ord, method compare)) (["Interfaces","Prelude"])
  def i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( e0, e1 ) do
    aux2 =
      if ( e0 == e1 ) do
          # Prelude.Bool.True()
          # 0
        true
      else
          # Prelude.Bool.False()
          # 0
        false
      end
    aux1 =
      aux2
    aux3 =
      case aux1 do
        false ->
          aux5 =
            if ( e0 < e1 ) do
                # Prelude.Bool.True()
                # 0
              true
            else
                # Prelude.Bool.False()
                # 0
              false
            end
          aux4 =
            aux5
          aux6 =
            case aux4 do
              false ->
                  # Prelude.Interfaces.GT()
                  # 0
                :GT
              true ->
                  # Prelude.Interfaces.LT()
                  # 0
                :LT
            end
          aux6
        true ->
            # Prelude.Interfaces.EQ()
            # 0
          :EQ
      end
    aux3
  end

    # LFun [] Prelude.Interfaces.Prelude.Nat.Nat implementation of Prelude.Interfaces.Ord, method compare [{e_0},{e_1}] case {e_1} of 
    # 	| 0 => case {e_0} of 
    # 	.   | 0 => Prelude.Interfaces.EQ()
    # 	.   | _ => let {in_0} = LMinus (ATInt ITBig)({e_0}, 1) in Prelude.Interfaces.GT()
    # 	| _ => let {in_1} = LMinus (ATInt ITBig)({e_1}, 1) in case {e_0} of 
    # 	    | 0 => Prelude.Interfaces.LT()
    # 	    | _ => let {in_2} = LMinus (ATInt ITBig)({e_0}, 1) in Prelude.Interfaces.Prelude.Nat.Nat implementation of Prelude.Interfaces.Ord, method compare({in_2}, {in_1})

  # Prelude.Interfaces.Prelude.Nat.Nat implementation of Prelude.Interfaces.Ord, method compare
  # NS (SN (Prelude.Nat.Nat implementation of Prelude.Interfaces.Ord, method compare)) (["Interfaces","Prelude"])
  def i_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( e0, e1 ) do
    aux1 =
      e1
    aux2 =
      case aux1 do
        0 ->
          aux3 =
            e0
          aux4 =
            case aux3 do
              0 ->
                  # Prelude.Interfaces.EQ()
                  # 0
                :EQ
              _ ->
                in0 =
                  e0 - 1
                  # Prelude.Interfaces.GT()
                  # 0
                :GT
            end
          aux4
        _ ->
          in1 =
            e1 - 1
          aux5 =
            e0
          aux6 =
            case aux5 do
              0 ->
                  # Prelude.Interfaces.LT()
                  # 0
                :LT
              _ ->
                in2 =
                  e0 - 1
                i_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( in2, in1 )
            end
          aux6
      end
    aux2
  end

    # LFun [] Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method >= [{e_0},{e_1}] case case Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method compare({e_0}, {e_1}) of 
    # 	| Prelude.Interfaces.GT() => Prelude.Bool.True()
    # 	| _ => Prelude.Bool.False() of 
    # 	| Prelude.Bool.False() => force{ Prelude.Interfaces.{Prelude.Show.@Prelude.Interfaces.Ord$Prec:!>=:0_lam_0}|({e_0}, {e_1}) }
    # 	| Prelude.Bool.True() => Prelude.Bool.True()

  # Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method >=
  # NS (SN (Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method >=)) (["Interfaces","Prelude"])
  def i_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__gt__eq_( e0, e1 ) do
    aux2 =
      i_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( e0, e1 )
    aux3 =
      case aux2 do
        :GT ->
            # Prelude.Bool.True()
            # 0
          true
        _ ->
            # Prelude.Bool.False()
            # 0
          false
      end
    aux1 =
      aux3
    aux4 =
      case aux1 do
        false ->
          i_Prelude_d_Interfaces_d__lc_Prelude_d_Show_d__at_Prelude_d_Interfaces_d_Ord_36_Prec_colon__bang__gt__eq__colon_0_lam_0_rc_( e0, e1 )
        true ->
            # Prelude.Bool.True()
            # 0
          true
      end
    aux4
  end

    # LFun [NoInline] Prelude.Interfaces.{Prelude.Show.@Prelude.Interfaces.Ord$Prec:!>=:0_lam_0} [{e_0},{e_1}] Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Eq, method ==({e_0}, {e_1})

  # Prelude.Interfaces.{Prelude.Show.@Prelude.Interfaces.Ord$Prec:!>=:0_lam_0}
  # NS (MN (0) (Prelude.Show.@Prelude.Interfaces.Ord$Prec:!>=:0_lam)) (["Interfaces","Prelude"])
  def i_Prelude_d_Interfaces_d__lc_Prelude_d_Show_d__at_Prelude_d_Interfaces_d_Ord_36_Prec_colon__bang__gt__eq__colon_0_lam_0_rc_( e0, e1 ) do
    i_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Eq_c__s_method_s__eq__eq_( e0, e1 )
  end

    # LFun [] Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method compare [{e_0},{e_1}] case {e_1} of 
    # 	| Prelude.Show.User({in_0}) => case {e_0} of 
    # 	.   | Prelude.Show.User({in_1}) => Prelude.Interfaces.Prelude.Nat.Nat implementation of Prelude.Interfaces.Ord, method compare({in_1}, {in_0})
    # 	.   | _ => Prelude.Interfaces.Prelude.Interfaces.Integer implementation of Prelude.Interfaces.Ord, method compare(Prelude.Show.precCon({e_0}), Prelude.Show.precCon({e_1}))
    # 	| _ => Prelude.Interfaces.Prelude.Interfaces.Integer implementation of Prelude.Interfaces.Ord, method compare(Prelude.Show.precCon({e_0}), Prelude.Show.precCon({e_1}))

  # Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method compare
  # NS (SN (Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method compare)) (["Interfaces","Prelude"])
  def i_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( e0, e1 ) do
    aux1 =
      e1
    aux2 =
      case aux1 do
        {:User, in0} ->
          aux3 =
            e0
          aux4 =
            case aux3 do
              {:User, in1} ->
                i_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( in1, in0 )
              _ ->
                i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( i_Prelude_d_Show_d_precCon( e0 ), i_Prelude_d_Show_d_precCon( e1 ) )
            end
          aux4
        _ ->
          i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( i_Prelude_d_Show_d_precCon( e0 ), i_Prelude_d_Show_d_precCon( e1 ) )
      end
    aux2
  end

    # LFun [Inline] with block in Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method > [{e_0},{e_1},{e_2}] case {e_0} of 
    # 	| Prelude.Interfaces.GT() => Prelude.Bool.True()
    # 	| _ => Prelude.Bool.False()

  # with block in Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method >
  # SN (with block in Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method >)
  def i_with_s_block_s_in_s_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__gt_( e0, _e1, _e2 ) do
    aux1 =
      e0
    aux2 =
      case aux1 do
        :GT ->
            # Prelude.Bool.True()
            # 0
          true
        _ ->
            # Prelude.Bool.False()
            # 0
          false
      end
    aux2
  end

    # LFun [Inline] with block in Prelude.Strings.strM [{e_0},{e_1}] case {e_1} of 
    # 	| Prelude.Basics.No() => Prelude.Strings.StrNil()
    # 	| Prelude.Basics.Yes() => Prelude.Strings.StrCons(LStrHead({e_0}))

  # with block in Prelude.Strings.strM
  # SN (with block in Prelude.Strings.strM)
  def i_with_s_block_s_in_s_Prelude_d_Strings_d_strM( e0, e1 ) do
    aux1 =
      e1
    aux2 =
      case aux1 do
        :No ->
            # Prelude.Strings.StrNil()
            # 0
          :StrNil
        :Yes ->
            # Prelude.Strings.StrCons(LStrHead({e_0}))
            # 1
          {:StrCons, String.first(e0)}
      end
    aux2
  end

    # LFun [Inline] with block in Prelude.Show.firstCharIs [{e_0},{e_1},{e_2}] case {e_2} of 
    # 	| Prelude.Strings.StrCons({in_0}) => {e_0}({in_0})
    # 	| Prelude.Strings.StrNil() => Prelude.Bool.False()

  # with block in Prelude.Show.firstCharIs
  # SN (with block in Prelude.Show.firstCharIs)
  def i_with_s_block_s_in_s_Prelude_d_Show_d_firstCharIs( e0, _e1, e2 ) do
    aux1 =
      e2
    aux2 =
      case aux1 do
        {:StrCons, in0} ->
          e0.( in0 )
        :StrNil ->
            # Prelude.Bool.False()
            # 0
          false
      end
    aux2
  end

    # LFun [Inline] case block in io_bind at IO.idr:107:34 [{e_0},{e_1},{e_2},{e_3},{e_4},{e_5},{e_6},{e_7}] {e_7}({e_5})

  # case block in io_bind at IO.idr:107:34
  # SN (case block in io_bind at IO.idr:107:34)
  def i_case_s_block_s_in_s_io_bind_s_at_s_IO_d_idr_colon_107_colon_34( _e0, _e1, _e2, _e3, _e4, e5, _e6, e7 ) do
    e7.( e5 )
  end

    # LFun [Inline] Main.case block in main at SumServer.idr:20:15 [{e_0},{e_1},{e_2}] case {e_1} of 
    # 	| Builtins.MkPair({in_0}, {in_1}) => Prelude.Monad.>>=(____, {e_0}, ____, ____, Prelude.Interactive.putStr'(____, "spawned\n"), Main.{main_SumServer__idr_20_15_case_lam_2}({e_0}, {in_1}))

  # Main.case block in main at SumServer.idr:20:15
  # NS (SN (case block in main at SumServer.idr:20:15)) (["Main"])
  def i_Main_d_case_s_block_s_in_s_main_s_at_s_SumServer_d_idr_colon_20_colon_15( e0, e1, _e2 ) do
    aux1 =
      e1
    aux2 =
      case aux1 do
        { _in0 , in1 } ->
          aux3 =
            i_Prelude_d_Monad_d__gt__gt__eq_( :idris_nothing, e0, :idris_nothing, :idris_nothing )
          aux3.( i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, "spawned\n" ) ).( i_Main_d__lc_main_SumServer__idr_20_15_case_lam_2_rc__partial2( e0, in1 ) )
      end
    aux2
  end

    # LFun [Inline] Main.{main_SumServer__idr_20_15_case_lam_2} [{e_0},{in_1},{in_2}] Prelude.Monad.>>=(____, {e_0}, ____, ____, Prelude.Interactive.putStr'(____, LStrConcat(Prelude.Show.primNumShow(____, prim__toStrInt, Prelude.Show.Open(), Main.sumTree(Main.Node(Main.Leaf(9), Main.Leaf(4)))), "\n")), Main.{main_SumServer__idr_20_15_case_lam_1}({e_0}, {in_1}))

  # Main.{main_SumServer__idr_20_15_case_lam_2}
  # NS (MN (2) (main_SumServer__idr_20_15_case_lam)) (["Main"])
  def i_Main_d__lc_main_SumServer__idr_20_15_case_lam_2_rc_( e0, in1, _in2 ) do
    aux2 =
      fn ( aux1 ) ->
        i_prim__toStrInt( aux1 )
      end
      # Prelude.Show.Open()
      # 0
      # Main.Leaf(9)
      # 1
      # Main.Leaf(4)
      # 1
      # Main.Node(Main.Leaf(9), Main.Leaf(4))
      # 2
    aux3 =
      i_Prelude_d_Monad_d__gt__gt__eq_( :idris_nothing, e0, :idris_nothing, :idris_nothing )
    aux3.( i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, i_Prelude_d_Show_d_primNumShow( :idris_nothing, aux2, :Open, i_Main_d_sumTree( {:Node, {:Leaf, 9}, {:Leaf, 4}} ) ) <> "\n" ) ).( i_Main_d__lc_main_SumServer__idr_20_15_case_lam_1_rc__partial2( e0, in1 ) )
  end

    # LFun [Inline] Main.{main_SumServer__idr_20_15_case_lam_1} [{e_0},{in_1},{in_3}] Prelude.Monad.>>=(____, {e_0}, ____, ____, ElixirFFI.gengencall({in_1}, 2), Main.{main_SumServer__idr_20_15_case_lam_0}())

  # Main.{main_SumServer__idr_20_15_case_lam_1}
  # NS (MN (1) (main_SumServer__idr_20_15_case_lam)) (["Main"])
  def i_Main_d__lc_main_SumServer__idr_20_15_case_lam_1_rc_( e0, in1, _in3 ) do
    aux1 =
      i_Prelude_d_Monad_d__gt__gt__eq_( :idris_nothing, e0, :idris_nothing, :idris_nothing )
    aux1.( i_ElixirFFI_d_gengencall_partial2( in1, 2 ) ).( i_Main_d__lc_main_SumServer__idr_20_15_case_lam_0_rc__partial0(  ) )
  end

    # LFun [Inline] Main.{main_SumServer__idr_20_15_case_lam_0} [{in_4}] Prelude.Interactive.putStr'(____, "yoyo\n")

  # Main.{main_SumServer__idr_20_15_case_lam_0}
  # NS (MN (0) (main_SumServer__idr_20_15_case_lam)) (["Main"])
  def i_Main_d__lc_main_SumServer__idr_20_15_case_lam_0_rc_( _in4 ) do
    i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, "yoyo\n" )
  end

    # LFun [Inline] case block in Void at (casefun Void) [] ____

  # case block in Void at (casefun Void)
  # SN (case block in Void at (casefun Void))
  def i_case_s_block_s_in_s_Void_s_at_s__lp_casefun_s_Void_rp_(  ) do
    :idris_nothing
  end

    # LFun [Inline] <<Void eliminator>> [] ____

  # <<Void eliminator>>
  # SN (<<Void eliminator>>)
  def i__lt__lt_Void_s_eliminator_gt__gt_(  ) do
    :idris_nothing
  end
  # SN (constructor of Prelude.Applicative.Alternative)
    # LConstructor constructor of Prelude.Applicative.Alternative 0 0

  # SN (constructor of Prelude.Applicative.Applicative)
    # LConstructor constructor of Prelude.Applicative.Applicative 0 0

  # SN (constructor of Prelude.Cast.Cast)
    # LConstructor constructor of Prelude.Cast.Cast 0 0

  # SN (constructor of Decidable.Equality.DecEq)
    # LConstructor constructor of Decidable.Equality.DecEq 0 0

  # SN (constructor of Prelude.Enum)
    # LConstructor constructor of Prelude.Enum 0 0

  # SN (constructor of Prelude.Interfaces.Eq)
    # LConstructor constructor of Prelude.Interfaces.Eq 0 0

  # SN (constructor of Prelude.Foldable.Foldable)
    # LConstructor constructor of Prelude.Foldable.Foldable 0 0

  # SN (constructor of Prelude.Interfaces.Fractional)
    # LConstructor constructor of Prelude.Interfaces.Fractional 0 0

  # SN (constructor of Prelude.Functor.Functor)
    # LConstructor constructor of Prelude.Functor.Functor 0 0

  # SN (constructor of Prelude.Interfaces.Integral)
    # LConstructor constructor of Prelude.Interfaces.Integral 0 0

  # SN (constructor of Prelude.Interfaces.MaxBound)
    # LConstructor constructor of Prelude.Interfaces.MaxBound 0 0

  # SN (constructor of Prelude.Interfaces.MinBound)
    # LConstructor constructor of Prelude.Interfaces.MinBound 0 0

  # SN (constructor of Prelude.Monad.Monad)
    # LConstructor constructor of Prelude.Monad.Monad 0 1

  # SN (constructor of Prelude.Algebra.Monoid)
    # LConstructor constructor of Prelude.Algebra.Monoid 0 0

  # SN (constructor of Prelude.Interfaces.Neg)
    # LConstructor constructor of Prelude.Interfaces.Neg 0 0

  # SN (constructor of Prelude.Interfaces.Num)
    # LConstructor constructor of Prelude.Interfaces.Num 0 0

  # SN (constructor of Prelude.Interfaces.Ord)
    # LConstructor constructor of Prelude.Interfaces.Ord 0 0

  # SN (constructor of Language.Reflection.Quotable)
    # LConstructor constructor of Language.Reflection.Quotable 0 0

  # SN (constructor of Language.Reflection.ReflConst)
    # LConstructor constructor of Language.Reflection.ReflConst 0 0

  # SN (constructor of Prelude.Algebra.Semigroup)
    # LConstructor constructor of Prelude.Algebra.Semigroup 0 0

  # SN (constructor of Prelude.Show.Show)
    # LConstructor constructor of Prelude.Show.Show 0 0

  # SN (constructor of Prelude.WellFounded.Sized)
    # LConstructor constructor of Prelude.WellFounded.Sized 0 0

  # SN (constructor of Prelude.Traversable.Traversable)
    # LConstructor constructor of Prelude.Traversable.Traversable 0 0

  # SN (constructor of Prelude.Uninhabited.Uninhabited)
    # LConstructor constructor of Prelude.Uninhabited.Uninhabited 0 0

  # SN (constructor of Prelude.WellFounded.WellFounded)
    # LConstructor constructor of Prelude.WellFounded.WellFounded 0 0


    # LFun [] {runMain_0} [] force{ Main.main(____) }

  # {runMain_0}
  # MN (0) (runMain)
  def runMain0(  ) do
    aux1 =
      i_Main_d_main(  )
    IdrisRts.force(aux1.( :idris_nothing ))
  end
  def i_io_bind_partial5( givenArg0, givenArg1, givenArg2, givenArg3, givenArg4 ) do
    fn ( restArg0 ) ->
      i_io_bind( givenArg0, givenArg1, givenArg2, givenArg3, givenArg4, restArg0 )
    end
  end
  def i_io_pure_partial3( givenArg0, givenArg1, givenArg2 ) do
    fn ( restArg0 ) ->
      i_io_pure( givenArg0, givenArg1, givenArg2, restArg0 )
    end
  end
  def i_prim_write_partial2( givenArg0, givenArg1 ) do
    fn ( restArg0 ) ->
      i_prim_write( givenArg0, givenArg1, restArg0 )
    end
  end
  def i_ElixirFFI_d_gengencall_partial2( givenArg0, givenArg1 ) do
    fn ( restArg0 ) ->
      i_ElixirFFI_d_gengencall( givenArg0, givenArg1, restArg0 )
    end
  end
  def i_ElixirFFI_d_gengenserver_partial6( givenArg0, givenArg1, givenArg2, givenArg3, givenArg4, givenArg5 ) do
    fn ( restArg0 ) ->
      i_ElixirFFI_d_gengenserver( givenArg0, givenArg1, givenArg2, givenArg3, givenArg4, givenArg5, restArg0 )
    end
  end
  def i_Main_d__lc_main_0_rc__partial1( givenArg0 ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_0_rc_( givenArg0, restArg0 )
    end
  end
  def i_Main_d__lc_main_SumServer__idr_20_15_case_lam_0_rc__partial0(  ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_SumServer__idr_20_15_case_lam_0_rc_( restArg0 )
    end
  end
  def i_Prelude_d_Show_d__lc_primNumShow_0_rc__partial0(  ) do
    fn ( restArg0 ) ->
      i_Prelude_d_Show_d__lc_primNumShow_0_rc_( restArg0 )
    end
  end
  def i_Prelude_d_Interactive_d__lc_putStr_prime__0_rc__partial0(  ) do
    fn ( restArg0 ) ->
      i_Prelude_d_Interactive_d__lc_putStr_prime__0_rc_( restArg0 )
    end
  end
  def i_Main_d__lc_main_1_rc__partial0(  ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_1_rc_( restArg0 )
    end
  end
  def i_Main_d__lc_main_SumServer__idr_20_15_case_lam_1_rc__partial2( givenArg0, givenArg1 ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_SumServer__idr_20_15_case_lam_1_rc_( givenArg0, givenArg1, restArg0 )
    end
  end
  def i_Main_d__lc_main_2_rc__partial0(  ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_2_rc_( restArg0 )
    end
  end
  def i_Main_d__lc_main_SumServer__idr_20_15_case_lam_2_rc__partial2( givenArg0, givenArg1 ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_SumServer__idr_20_15_case_lam_2_rc_( givenArg0, givenArg1, restArg0 )
    end
  end
  def i_Main_d__lc_main_3_rc__partial0(  ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_3_rc_( restArg0 )
    end
  end
  def i_Main_d__lc_main_4_rc__partial1( givenArg0 ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_4_rc_( givenArg0, restArg0 )
    end
  end
  def i_Main_d__lc_main_5_rc__partial0(  ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_5_rc_( restArg0 )
    end
  end
  def i_Main_d__lc_main_6_rc__partial0(  ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_6_rc_( restArg0 )
    end
  end
  def i_Main_d__lc_main_7_rc__partial0(  ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_7_rc_( restArg0 )
    end
  end
  def i_Main_d__lc_main_8_rc__partial1( givenArg0 ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_8_rc_( givenArg0, restArg0 )
    end
  end
  def i_Main_d__lc_main_9_rc__partial0(  ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_9_rc_( restArg0 )
    end
  end
  def i_Main_d__lc_main_10_rc__partial0(  ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_10_rc_( restArg0 )
    end
  end
  def i_Main_d__lc_main_11_rc__partial0(  ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_11_rc_( restArg0 )
    end
  end
  def i_Main_d__lc_main_12_rc__partial0(  ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_12_rc_( restArg0 )
    end
  end
  def i_Main_d__lc_main_13_rc__partial1( givenArg0 ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_13_rc_( givenArg0, restArg0 )
    end
  end
  def i_Main_d__lc_main_14_rc__partial1( givenArg0 ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_14_rc_( givenArg0, restArg0 )
    end
  end
  def i_Main_d__lc_main_15_rc__partial0(  ) do
    fn ( restArg0 ) ->
      i_Main_d__lc_main_15_rc_( restArg0 )
    end
  end
  def io_bind1_partial6( givenArg0, givenArg1, givenArg2, givenArg3, givenArg4, givenArg5 ) do
    fn ( restArg0 ) ->
      io_bind1( givenArg0, givenArg1, givenArg2, givenArg3, givenArg4, givenArg5, restArg0 )
    end
  end
end

IdrisElixir.runMain0()
