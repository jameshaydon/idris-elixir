# This file was compiled by idris-elixir.

defmodule IdrisElixir do
  import Idrislib

  # Prelude.Bool.&&
  curry i_Prelude_d_Bool_d__and__and_/2
  def i_Prelude_d_Bool_d__and__and_( e0, e1 ) do
    aux1 =
      case e0 do
        false ->
          false
        true ->
          Idrislib.LazyVal.force(e1)
      end
    aux1
  end

  # Prelude.List.++
  curry i_Prelude_d_List_d__plus__plus_/3
  def i_Prelude_d_List_d__plus__plus_( _e0, e1, e2 ) do
    aux1 =
      case e1 do
        [ in0 | in1 ] ->
          [ in0 | i_Prelude_d_List_d__plus__plus_( :idris_nothing, in1, e2 ) ]
        [] ->
          e2
      end
    aux1
  end

  # Prelude.Applicative.<*>
  curry i_Prelude_d_Applicative_d__lt__42__gt_/4
  def i_Prelude_d_Applicative_d__lt__42__gt_( _e0, e1, e2, e3 ) do
    aux1 =
      case e1 do
        {:"constructor_s_of_s_Prelude.Applicative.Applicative", _in0, in1} ->
          in1.( e2 ).( e3 )
      end
    aux1
  end

  # Prelude.Algebra.<+>
  curry i_Prelude_d_Algebra_d__lt__plus__gt_/2
  def i_Prelude_d_Algebra_d__lt__plus__gt_( _e0, e1 ) do
    e1
  end

  # Force
  curry i_Force/3
  def i_Force( _e0, _e1, e2 ) do
    Idrislib.LazyVal.force(e2)
  end

  # PE_concatMap_8faac41f
  curry i_PE_concatMap_8faac41f/4
  def i_PE_concatMap_8faac41f( _e0, _e1, e2, e3 ) do
    i_Prelude_d_Foldable_d_Prelude_d_List_d_List_s_implementation_s_of_s_Prelude_d_Foldable_d_Foldable_c__s_method_s_foldr( :idris_nothing, :idris_nothing, i__lc_PE_concatMap_8faac41f_0_rc_().( e2 ), i_PE_neutral_3b7d03e2( :idris_nothing ), e3 )
  end

  # {PE_concatMap_8faac41f_0}
  curry i__lc_PE_concatMap_8faac41f_0_rc_/2
  def i__lc_PE_concatMap_8faac41f_0_rc_( e2, in0 ) do
    aux1 =
      i_Prelude_d_Algebra_d__lt__plus__gt_( :idris_nothing, i_PE_constructor_s_of_s_Prelude_d_Algebra_d_Monoid_hash_Semigroup_s_ty_3b7d03e2().( :idris_nothing ) )
    aux1.( e2.( in0 ) )
  end

  # PE_constructor of Prelude.Algebra.Monoid#Semigroup ty_3b7d03e2
  curry i_PE_constructor_s_of_s_Prelude_d_Algebra_d_Monoid_hash_Semigroup_s_ty_3b7d03e2/3
  def i_PE_constructor_s_of_s_Prelude_d_Algebra_d_Monoid_hash_Semigroup_s_ty_3b7d03e2( _e0, meth0, meth1 ) do
    i_Prelude_d_List_d__plus__plus_( :idris_nothing, meth0, meth1 )
  end

  # PE_neutral_3b7d03e2
  curry i_PE_neutral_3b7d03e2/1
  def i_PE_neutral_3b7d03e2( _e0 ) do
    []
  end

  # assert_unreachable
  def i_assert_unreachable(  ) do
    :idris_nothing
  end

  # call__IO
  curry i_call__IO/3
  def i_call__IO( _e0, _e1, e2 ) do
    e2.( :idris_nothing )
  end

  # Prelude.Basics.id
  curry i_Prelude_d_Basics_d_id/2
  def i_Prelude_d_Basics_d_id( _e0, e1 ) do
    e1
  end

  # idris_crash
  def i_idris_crash(  ) do
    :idris_nothing
  end

  # Prelude.Bool.ifThenElse
  curry i_Prelude_d_Bool_d_ifThenElse/4
  def i_Prelude_d_Bool_d_ifThenElse( _e0, e1, e2, e3 ) do
    aux1 =
      case e1 do
        false ->
          Idrislib.LazyVal.force(e3)
        true ->
          Idrislib.LazyVal.force(e2)
      end
    aux1
  end

  # Main.initState
  def i_Main_d_initState(  ) do
    i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo( 1, 3 )
  end

  # Prelude.Interfaces.intToBool
  curry i_Prelude_d_Interfaces_d_intToBool/1
  def i_Prelude_d_Interfaces_d_intToBool( e0 ) do
    aux1 =
      case e0 do
        0 ->
          false
        _ ->
          true
      end
    aux1
  end

  # io_bind
  curry i_io_bind/6
  def i_io_bind( e0, e1, e2, e3, e4, i_w ) do
    aux1 =
      io_bind2( e0, e1, e2, e3, e4, i_w )
    aux1.( e3.( i_w ) )
  end

  # {io_bind_2}
  curry io_bind2/6
  def io_bind2( e0, e1, e2, e3, e4, i_w ) do
    io_bind1().( e0 ).( e1 ).( e2 ).( e3 ).( e4 ).( i_w )
  end

  # {io_bind_1}
  curry io_bind1/7
  def io_bind1( e0, e1, e2, e3, e4, i_w, in0 ) do
    aux1 =
      io_bind0( e0, e1, e2, e3, e4, i_w, in0 )
    aux1.( i_w )
  end

  # {io_bind_0}
  curry io_bind0/7
  def io_bind0( _e0, _e1, _e2, _e3, e4, _i_w, in0 ) do
    e4.( in0 )
  end

  # io_pure
  curry i_io_pure/4
  def i_io_pure( _e0, _e1, e2, _i_w ) do
    e2
  end

  # Main.loop
  curry i_Main_d_loop/1
  def i_Main_d_loop( e0 ) do
    {:Bind, :Recv, i_Main_d__lc_loop_2_rc_().( e0 )}
  end

  # Main.{loop_2}
  curry i_Main_d__lc_loop_2_rc_/2
  def i_Main_d__lc_loop_2_rc_( e0, in0 ) do
    aux1 =
      case in0 do
        {:GetFreq, in1} ->
          aux2 =
            case e0 do
              [ in2 | in3 ] ->
                {:Bind, {:Send, in1, {:Freq, in2}}, i_Main_d__lc_loop_0_rc_().( in3 )}
              [] ->
                {:Bind, {:Send, in1, :NoneFree}, i_Main_d__lc_loop_1_rc_()}
            end
          aux2
        {:RetFreq, in6} ->
          i_Main_d_loop( [ in6 | e0 ] )
      end
    aux1
  end

  # Main.{loop_1}
  curry i_Main_d__lc_loop_1_rc_/1
  def i_Main_d__lc_loop_1_rc_( _in5 ) do
    i_Main_d_loop( [] )
  end

  # Main.{loop_0}
  curry i_Main_d__lc_loop_0_rc_/2
  def i_Main_d__lc_loop_0_rc_( in3, _in4 ) do
    i_Main_d_loop( in3 )
  end

  # Main.main
  def i_Main_d_main(  ) do
    aux1 =
      i_Main_d_tester(  )
    i_SafeActors_d_runBeh( :idris_nothing, :idris_nothing, aux1 )
  end

  # mkForeignPrim
  def i_mkForeignPrim(  ) do
    :idris_nothing
  end

  # Prelude.Bool.not
  curry i_Prelude_d_Bool_d_not/1
  def i_Prelude_d_Bool_d_not( e0 ) do
    aux1 =
      case e0 do
        false ->
          true
        true ->
          false
      end
    aux1
  end

  # Main.phone
  curry i_Main_d_phone/3
  def i_Main_d_phone( e0, e1, e2 ) do
    {:Bind, :Self, i_Main_d__lc_phone_8_rc_().( e1 ).( e0 ).( e2 )}
  end

  # Main.{phone_8}
  curry i_Main_d__lc_phone_8_rc_/4
  def i_Main_d__lc_phone_8_rc_( e1, e0, e2, in0 ) do
    {:Bind, {:Send, e1, {:GetFreq, in0}}, i_Main_d__lc_phone_7_rc_().( e0 ).( e1 ).( e2 )}
  end

  # Main.{phone_7}
  curry i_Main_d__lc_phone_7_rc_/4
  def i_Main_d__lc_phone_7_rc_( e0, e1, e2, _in1 ) do
    {:Bind, :Recv, i_Main_d__lc_phone_6_rc_().( e0 ).( e1 ).( e2 )}
  end

  # Main.{phone_6}
  curry i_Main_d__lc_phone_6_rc_/4
  def i_Main_d__lc_phone_6_rc_( e0, e1, e2, in2 ) do
    aux1 =
      case in2 do
        {:Freq, in3} ->
          aux3 =
            fn ( aux2 ) ->
              i_prim__toStrInt( aux2 )
            end
          {:Bind, {:LiftIO, i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, "phone " <> e0 <> " got a frequency: " <> i_Prelude_d_Show_d_primNumShow( :idris_nothing, aux3, :Open, in3 ) <> "\n" )}, i_Main_d__lc_phone_3_rc_().( e1 ).( in3 ).( e0 ).( e2 )}
        _ ->
          {:Bind, {:LiftIO, i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, "phone " <> e0 <> " couldn't get frequency!" <> "\n" )}, i_Main_d__lc_phone_5_rc_().( e0 ).( e1 ).( e2 )}
      end
    aux1
  end

  # Main.{phone_5}
  curry i_Main_d__lc_phone_5_rc_/4
  def i_Main_d__lc_phone_5_rc_( e0, e1, e2, _in8 ) do
    {:Bind, {:LiftIO, i_ElixirFFI_d_sleep().( 1000 )}, i_Main_d__lc_phone_4_rc_().( e0 ).( e1 ).( e2 )}
  end

  # Main.{phone_4}
  curry i_Main_d__lc_phone_4_rc_/4
  def i_Main_d__lc_phone_4_rc_( e0, e1, e2, _in9 ) do
    i_Main_d_phone( e0, e1, e2 )
  end

  # Main.{phone_3}
  curry i_Main_d__lc_phone_3_rc_/5
  def i_Main_d__lc_phone_3_rc_( e1, in3, e0, e2, _in4 ) do
    {:Bind, {:LiftIO, i_ElixirFFI_d_sleep().( 1500 )}, i_Main_d__lc_phone_2_rc_().( e1 ).( in3 ).( e0 ).( e2 )}
  end

  # Main.{phone_2}
  curry i_Main_d__lc_phone_2_rc_/5
  def i_Main_d__lc_phone_2_rc_( e1, in3, e0, e2, _in5 ) do
    {:Bind, {:Send, e1, {:RetFreq, in3}}, i_Main_d__lc_phone_1_rc_().( e0 ).( e2 )}
  end

  # Main.{phone_1}
  curry i_Main_d__lc_phone_1_rc_/3
  def i_Main_d__lc_phone_1_rc_( e0, e2, _in6 ) do
    {:Bind, {:LiftIO, i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, "phone " <> e0 <> " has finished calling." <> "\n" )}, i_Main_d__lc_phone_0_rc_().( e2 )}
  end

  # Main.{phone_0}
  curry i_Main_d__lc_phone_0_rc_/2
  def i_Main_d__lc_phone_0_rc_( e2, _in7 ) do
    {:Send, e2, {}}
  end

  # Prelude.Show.precCon
  curry i_Prelude_d_Show_d_precCon/1
  def i_Prelude_d_Show_d_precCon( e0 ) do
    aux1 =
      case e0 do
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
    aux1
  end

  # Prelude.Show.primNumShow
  curry i_Prelude_d_Show_d_primNumShow/4
  def i_Prelude_d_Show_d_primNumShow( e0, e1, e2, e3 ) do
    in0 =
      e1.( e3 )
    aux2 =
      i_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__gt__eq_( e2, :PrefixMinus )
    aux3 =
      case aux2 do
        false ->
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

  # Prelude.Show.{primNumShow_2}
  curry i_Prelude_d_Show_d__lc_primNumShow_2_rc_/5
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
          false
      end
    aux2
  end

  # Prelude.Show.{primNumShow_1}
  curry i_Prelude_d_Show_d__lc_primNumShow_1_rc_/6
  def i_Prelude_d_Show_d__lc_primNumShow_1_rc_( _e0, _e1, _e2, _e3, _in0, _in2 ) do
    i_Prelude_d_Show_d__lc_primNumShow_0_rc_()
  end

  # Prelude.Show.{primNumShow_0}
  curry i_Prelude_d_Show_d__lc_primNumShow_0_rc_/1
  def i_Prelude_d_Show_d__lc_primNumShow_0_rc_( in1 ) do
    aux1 =
      if ( in1 == '-' ) do
        true
      else
        false
      end
    aux1
  end

  # prim__addBigInt
  curry i_prim__addBigInt/2
  def i_prim__addBigInt( op0, op1 ) do
    op0 + op1
  end

  # prim__asPtr
  curry i_prim__asPtr/1
  def i_prim__asPtr( op0 ) do
    op0
  end

  # prim__concat
  curry i_prim__concat/2
  def i_prim__concat( op0, op1 ) do
    op0 <> op1
  end

  # prim__eqBigInt
  curry i_prim__eqBigInt/2
  def i_prim__eqBigInt( op0, op1 ) do
    op0 == op1
  end

  # prim__eqChar
  curry i_prim__eqChar/2
  def i_prim__eqChar( op0, op1 ) do
    op0 == op1
  end

  # prim__eqInt
  curry i_prim__eqInt/2
  def i_prim__eqInt( op0, op1 ) do
    op0 == op1
  end

  # prim__eqManagedPtr
  curry i_prim__eqManagedPtr/2
  def i_prim__eqManagedPtr( op0, op1 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__eqManagedPtr" <> Kernel.inspect(op0) <> Kernel.inspect(op1) )
  end

  # prim__eqPtr
  curry i_prim__eqPtr/2
  def i_prim__eqPtr( op0, op1 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__eqPtr" <> Kernel.inspect(op0) <> Kernel.inspect(op1) )
  end

  # prim__eqString
  curry i_prim__eqString/2
  def i_prim__eqString( op0, op1 ) do
    op0 == op1
  end

  # prim__null
  def i_prim__null(  ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__null")
  end

  # prim__peek16
  curry i_prim__peek16/3
  def i_prim__peek16( op0, op1, op2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peek16" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) )
  end

  # prim__peek32
  curry i_prim__peek32/3
  def i_prim__peek32( op0, op1, op2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peek32" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) )
  end

  # prim__peek64
  curry i_prim__peek64/3
  def i_prim__peek64( op0, op1, op2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peek64" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) )
  end

  # prim__peek8
  curry i_prim__peek8/3
  def i_prim__peek8( op0, op1, op2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peek8" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) )
  end

  # prim__peekDouble
  curry i_prim__peekDouble/3
  def i_prim__peekDouble( op0, op1, op2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peekDouble" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) )
  end

  # prim__peekPtr
  curry i_prim__peekPtr/3
  def i_prim__peekPtr( op0, op1, op2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peekPtr" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) )
  end

  # prim__peekSingle
  curry i_prim__peekSingle/3
  def i_prim__peekSingle( op0, op1, op2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peekSingle" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) )
  end

  # prim__poke16
  curry i_prim__poke16/4
  def i_prim__poke16( op0, op1, op2, op3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__poke16" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) <> Kernel.inspect(op3) )
  end

  # prim__poke32
  curry i_prim__poke32/4
  def i_prim__poke32( op0, op1, op2, op3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__poke32" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) <> Kernel.inspect(op3) )
  end

  # prim__poke64
  curry i_prim__poke64/4
  def i_prim__poke64( op0, op1, op2, op3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__poke64" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) <> Kernel.inspect(op3) )
  end

  # prim__poke8
  curry i_prim__poke8/4
  def i_prim__poke8( op0, op1, op2, op3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__poke8" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) <> Kernel.inspect(op3) )
  end

  # prim__pokeDouble
  curry i_prim__pokeDouble/4
  def i_prim__pokeDouble( op0, op1, op2, op3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__pokeDouble" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) <> Kernel.inspect(op3) )
  end

  # prim__pokePtr
  curry i_prim__pokePtr/4
  def i_prim__pokePtr( op0, op1, op2, op3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__pokePtr" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) <> Kernel.inspect(op3) )
  end

  # prim__pokeSingle
  curry i_prim__pokeSingle/4
  def i_prim__pokeSingle( op0, op1, op2, op3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__pokeSingle" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) <> Kernel.inspect(op3) )
  end

  # prim__ptrOffset
  curry i_prim__ptrOffset/2
  def i_prim__ptrOffset( op0, op1 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__ptrOffset" <> Kernel.inspect(op0) <> Kernel.inspect(op1) )
  end

  # prim__readChars
  curry i_prim__readChars/3
  def i_prim__readChars( op0, op1, op2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__readChars" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) )
  end

  # prim__readFile
  curry i_prim__readFile/2
  def i_prim__readFile( op0, op1 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__readFile" <> Kernel.inspect(op0) <> Kernel.inspect(op1) )
  end

  # prim__registerPtr
  curry i_prim__registerPtr/2
  def i_prim__registerPtr( op0, op1 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__registerPtr" <> Kernel.inspect(op0) <> Kernel.inspect(op1) )
  end

  # prim__sextInt_BigInt
  curry i_prim__sextInt_BigInt/1
  def i_prim__sextInt_BigInt( op0 ) do
    op0
  end

  # prim__sizeofPtr
  def i_prim__sizeofPtr(  ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__sizeofPtr")
  end

  # prim__sltBigInt
  curry i_prim__sltBigInt/2
  def i_prim__sltBigInt( op0, op1 ) do
    op0 < op1
  end

  # prim__sltInt
  curry i_prim__sltInt/2
  def i_prim__sltInt( op0, op1 ) do
    op0 < op1
  end

  # prim__stderr
  def i_prim__stderr(  ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__stderr")
  end

  # prim__stdin
  def i_prim__stdin(  ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__stdin")
  end

  # prim__stdout
  def i_prim__stdout(  ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__stdout")
  end

  # prim__strHead
  curry i_prim__strHead/1
  def i_prim__strHead( op0 ) do
    String.first(op0)
  end

  # prim__subBigInt
  curry i_prim__subBigInt/2
  def i_prim__subBigInt( op0, op1 ) do
    op0 - op1
  end

  # prim__subInt
  curry i_prim__subInt/2
  def i_prim__subInt( op0, op1 ) do
    op0 - op1
  end

  # prim__toStrBigInt
  curry i_prim__toStrBigInt/1
  def i_prim__toStrBigInt( op0 ) do
    to_string( op0 )
  end

  # prim__toStrInt
  curry i_prim__toStrInt/1
  def i_prim__toStrInt( op0 ) do
    to_string( op0 )
  end

  # prim__vm
  curry i_prim__vm/1
  def i_prim__vm( op0 ) do
    op0
  end

  # prim__writeFile
  curry i_prim__writeFile/3
  def i_prim__writeFile( op0, op1, op2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__writeFile" <> Kernel.inspect(op0) <> Kernel.inspect(op1) <> Kernel.inspect(op2) )
  end

  # prim__writeString
  curry i_prim__writeString/2
  def i_prim__writeString( op0, op1 ) do
    IO.puts( op1 )
  end

  # prim_io_bind
  curry i_prim_io_bind/4
  def i_prim_io_bind( _e0, _e1, e2, e3 ) do
    e3.( e2 )
  end

  # prim_write
  curry i_prim_write/3
  def i_prim_write( _e0, e1, i_w ) do
    IO.puts( e1 )
  end

  # Prelude.Applicative.pure
  curry i_Prelude_d_Applicative_d_pure/3
  def i_Prelude_d_Applicative_d_pure( _e0, e1, e2 ) do
    aux1 =
      case e1 do
        {:"constructor_s_of_s_Prelude.Applicative.Applicative", in0, _in1} ->
          in0.( e2 )
      end
    aux1
  end

  # Prelude.Interactive.putStr'
  curry i_Prelude_d_Interactive_d_putStr_prime_/2
  def i_Prelude_d_Interactive_d_putStr_prime_( _e0, e1 ) do
    i_io_bind().( :idris_nothing ).( :idris_nothing ).( :idris_nothing ).( i_prim_write().( :idris_nothing ).( e1 ) ).( i_Prelude_d_Interactive_d__lc_putStr_prime__0_rc_() )
  end

  # Prelude.Interactive.{putStr'_0}
  curry i_Prelude_d_Interactive_d__lc_putStr_prime__0_rc_/1
  def i_Prelude_d_Interactive_d__lc_putStr_prime__0_rc_( _in0 ) do
    i_io_pure().( :idris_nothing ).( :idris_nothing ).( {} )
  end

  # ElixirFFI.receivePtr
  curry i_ElixirFFI_d_receivePtr/1
  def i_ElixirFFI_d_receivePtr( _i_w ) do
    Idrislib.receive_any(  )
  end

  # Prelude.List.replicate
  curry i_Prelude_d_List_d_replicate/3
  def i_Prelude_d_List_d_replicate( _e0, e1, e2 ) do
    aux1 =
      case e1 do
        0 ->
          []
        _ ->
          in0 =
            e1 - 1
          [ e2 | i_Prelude_d_List_d_replicate( :idris_nothing, in0, e2 ) ]
      end
    aux1
  end

  # SafeActors.runBeh
  curry i_SafeActors_d_runBeh/3
  def i_SafeActors_d_runBeh( _e0, _e1, e2 ) do
    aux1 =
      case e2 do
        {:Bind, in0, in1} ->
          i_io_bind().( :idris_nothing ).( :idris_nothing ).( :idris_nothing ).( i_SafeActors_d_runBeh( :idris_nothing, :idris_nothing, in0 ) ).( i_SafeActors_d__lc_runBeh_0_rc_().( in1 ) )
        {:LiftIO, in3} ->
          in3
        {:Pure, in4} ->
          i_io_pure().( :idris_nothing ).( :idris_nothing ).( in4 )
        :Recv ->
          i_ElixirFFI_d_unsafeReceive( :idris_nothing )
        :Self ->
          aux3 =
            fn ( aux2 ) ->
              i_ElixirFFI_d_selfPtr( aux2 )
            end
          i_io_bind().( :idris_nothing ).( :idris_nothing ).( :idris_nothing ).( aux3 ).( i_SafeActors_d__lc_runBeh_1_rc_() )
        {:Send, in6, in7} ->
          i_ElixirFFI_d_sendPtr().( in6 ).( in7 )
        {:Spawn, in8} ->
          i_io_bind().( :idris_nothing ).( :idris_nothing ).( :idris_nothing ).( i_ElixirFFI_d_spawnPtr().( i_SafeActors_d_runBeh( :idris_nothing, :idris_nothing, in8 ) ) ).( i_SafeActors_d__lc_runBeh_2_rc_() )
      end
    aux1
  end

  # SafeActors.{runBeh_2}
  curry i_SafeActors_d__lc_runBeh_2_rc_/1
  def i_SafeActors_d__lc_runBeh_2_rc_( in9 ) do
    i_io_pure().( :idris_nothing ).( :idris_nothing ).( in9 )
  end

  # SafeActors.{runBeh_1}
  curry i_SafeActors_d__lc_runBeh_1_rc_/1
  def i_SafeActors_d__lc_runBeh_1_rc_( in5 ) do
    i_io_pure().( :idris_nothing ).( :idris_nothing ).( in5 )
  end

  # SafeActors.{runBeh_0}
  curry i_SafeActors_d__lc_runBeh_0_rc_/2
  def i_SafeActors_d__lc_runBeh_0_rc_( in1, in2 ) do
    i_SafeActors_d_runBeh( :idris_nothing, :idris_nothing, in1.( in2 ) )
  end

  # run__IO
  curry i_run__IO/2
  def i_run__IO( _e0, e1 ) do
    e1.( :idris_nothing )
  end

  # ElixirFFI.selfPtr
  curry i_ElixirFFI_d_selfPtr/1
  def i_ElixirFFI_d_selfPtr( _i_w ) do
    self(  )
  end

  # ElixirFFI.sendPtr
  curry i_ElixirFFI_d_sendPtr/3
  def i_ElixirFFI_d_sendPtr( e0, e1, _i_w ) do
    send( e0, e1 )
  end

  # Prelude.Traversable.sequence
  curry i_Prelude_d_Traversable_d_sequence/5
  def i_Prelude_d_Traversable_d_sequence( _e0, _e1, _e2, e3, e4 ) do
    aux1 =
      i_Prelude_d_Traversable_d_traverse( :idris_nothing, e3, :idris_nothing, :idris_nothing, :idris_nothing, e4 )
    aux1.( i_Prelude_d_Basics_d_id().( :idris_nothing ) )
  end

  # Prelude.Show.showParens
  curry i_Prelude_d_Show_d_showParens/2
  def i_Prelude_d_Show_d_showParens( e0, e1 ) do
    aux1 =
      case e0 do
        false ->
          e1
        true ->
          "(" <> e1 <> ")"
      end
    aux1
  end

  # ElixirFFI.sleep
  curry i_ElixirFFI_d_sleep/2
  def i_ElixirFFI_d_sleep( e0, _i_w ) do
    :timer.sleep( e0 )
  end

  # SafeActors.spawn
  curry i_SafeActors_d_spawn/3
  def i_SafeActors_d_spawn( _e0, _e1, sat1 ) do
    {:Spawn, sat1}
  end

  # ElixirFFI.spawnPtr
  curry i_ElixirFFI_d_spawnPtr/2
  def i_ElixirFFI_d_spawnPtr( e0, _i_w ) do
    Idrislib.spawn_idris( e0 )
  end

  # Prelude.Strings.strM
  curry i_Prelude_d_Strings_d_strM/1
  def i_Prelude_d_Strings_d_strM( e0 ) do
    aux3 =
      if ( e0 == "" ) do
        true
      else
        false
      end
    aux2 =
      aux3
    aux4 =
      case aux2 do
        false ->
          true
        true ->
          false
      end
    aux1 =
      i_Decidable_d_Equality_d_Decidable_d_Equality_d_Bool_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq( aux4, true )
    aux5 =
      case aux1 do
        :No ->
          :StrNil
        :Yes ->
          {:StrCons, String.first(e0)}
      end
    aux5
  end

  # Main.tester
  def i_Main_d_tester(  ) do
    {:Bind, :Self, i_Main_d__lc_tester_24_rc_()}
  end

  # Main.{tester_24}
  curry i_Main_d__lc_tester_24_rc_/1
  def i_Main_d__lc_tester_24_rc_( in0 ) do
    aux1 =
      i_Main_d_initState(  )
    {:Bind, {:Spawn, i_Main_d_loop( aux1 )}, i_Main_d__lc_tester_23_rc_().( in0 )}
  end

  # Main.{tester_23}
  curry i_Main_d__lc_tester_23_rc_/2
  def i_Main_d__lc_tester_23_rc_( in0, in1 ) do
    {:Bind, i_Prelude_d_Traversable_d_Prelude_d_List_s_implementation_s_of_s_Prelude_d_Traversable_d_Traversable_c__s_method_s_traverse( :idris_nothing, :idris_nothing, :idris_nothing, {:"constructor_s_of_s_Prelude.Applicative.Applicative", i_Main_d__lc_tester_1_rc_(), i_Main_d__lc_tester_5_rc_()}, i_SafeActors_d_spawn().( :idris_nothing ).( :idris_nothing ), i_Prelude_d_Monad_d_Prelude_d_List_s_implementation_s_of_s_Prelude_d_Monad_d_Monad_c__s_method_s__gt__gt__eq_( :idris_nothing, :idris_nothing, i_Prelude_d_Monad_d_Prelude_d_List_s_implementation_s_of_s_Prelude_d_Monad_d_Monad_c__s_method_s__gt__gt__eq_( :idris_nothing, :idris_nothing, [ "A" | [ "B" | [ "C" | [ "D" | [ "E" | [] ] ] ] ] ], i_Main_d__lc_tester_7_rc_() ), i_Main_d__lc_tester_8_rc_().( in1 ).( in0 ) ) ), i_Main_d__lc_tester_22_rc_()}
  end

  # Main.{tester_22}
  curry i_Main_d__lc_tester_22_rc_/1
  def i_Main_d__lc_tester_22_rc_( _in11 ) do
    aux1 =
      i_Prelude_d_Traversable_d_sequence( :idris_nothing, :idris_nothing, :idris_nothing, i_Main_d__lc_tester_14_rc_(), {:"constructor_s_of_s_Prelude.Applicative.Applicative", i_Main_d__lc_tester_16_rc_(), i_Main_d__lc_tester_20_rc_()} )
    {:Bind, aux1.( i_Prelude_d_List_d_replicate( :idris_nothing, 50, :Recv ) ), i_Main_d__lc_tester_21_rc_()}
  end

  # Main.{tester_21}
  curry i_Main_d__lc_tester_21_rc_/1
  def i_Main_d__lc_tester_21_rc_( _in24 ) do
    {:LiftIO, i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, "Done!\n" )}
  end

  # Main.{tester_20}
  curry i_Main_d__lc_tester_20_rc_/1
  def i_Main_d__lc_tester_20_rc_( _in20 ) do
    i_Main_d__lc_tester_19_rc_()
  end

  # Main.{tester_19}
  curry i_Main_d__lc_tester_19_rc_/1
  def i_Main_d__lc_tester_19_rc_( _in21 ) do
    i_Main_d__lc_tester_18_rc_()
  end

  # Main.{tester_18}
  curry i_Main_d__lc_tester_18_rc_/1
  def i_Main_d__lc_tester_18_rc_( in22 ) do
    i_Main_d__lc_tester_17_rc_().( in22 )
  end

  # Main.{tester_17}
  curry i_Main_d__lc_tester_17_rc_/2
  def i_Main_d__lc_tester_17_rc_( in22, in23 ) do
    i_Prelude_d_Applicative_d_SafeActors_d_Beh_s_a_s_implementation_s_of_s_Prelude_d_Applicative_d_Applicative_c__s_method_s__lt__42__gt_( :idris_nothing, :idris_nothing, :idris_nothing, in22, in23 )
  end

  # Main.{tester_16}
  curry i_Main_d__lc_tester_16_rc_/1
  def i_Main_d__lc_tester_16_rc_( _in18 ) do
    i_Main_d__lc_tester_15_rc_()
  end

  # Main.{tester_15}
  curry i_Main_d__lc_tester_15_rc_/1
  def i_Main_d__lc_tester_15_rc_( in19 ) do
    {:Pure, in19}
  end

  # Main.{tester_14}
  curry i_Main_d__lc_tester_14_rc_/1
  def i_Main_d__lc_tester_14_rc_( _in12 ) do
    i_Main_d__lc_tester_13_rc_()
  end

  # Main.{tester_13}
  curry i_Main_d__lc_tester_13_rc_/1
  def i_Main_d__lc_tester_13_rc_( _in13 ) do
    i_Main_d__lc_tester_12_rc_()
  end

  # Main.{tester_12}
  curry i_Main_d__lc_tester_12_rc_/1
  def i_Main_d__lc_tester_12_rc_( _in14 ) do
    i_Main_d__lc_tester_11_rc_()
  end

  # Main.{tester_11}
  curry i_Main_d__lc_tester_11_rc_/1
  def i_Main_d__lc_tester_11_rc_( in15 ) do
    i_Main_d__lc_tester_10_rc_().( in15 )
  end

  # Main.{tester_10}
  curry i_Main_d__lc_tester_10_rc_/2
  def i_Main_d__lc_tester_10_rc_( in15, in16 ) do
    i_Main_d__lc_tester_9_rc_().( in15 ).( in16 )
  end

  # Main.{tester_9}
  curry i_Main_d__lc_tester_9_rc_/3
  def i_Main_d__lc_tester_9_rc_( in15, in16, in17 ) do
    i_Prelude_d_Traversable_d_Prelude_d_List_s_implementation_s_of_s_Prelude_d_Traversable_d_Traversable_c__s_method_s_traverse( :idris_nothing, :idris_nothing, :idris_nothing, in15, in16, in17 )
  end

  # Main.{tester_8}
  curry i_Main_d__lc_tester_8_rc_/3
  def i_Main_d__lc_tester_8_rc_( in1, in0, in10 ) do
    [ i_Main_d_phone( in10, in1, in0 ) | [] ]
  end

  # Main.{tester_7}
  curry i_Main_d__lc_tester_7_rc_/1
  def i_Main_d__lc_tester_7_rc_( in8 ) do
    i_Prelude_d_Monad_d_Prelude_d_List_s_implementation_s_of_s_Prelude_d_Monad_d_Monad_c__s_method_s__gt__gt__eq_( :idris_nothing, :idris_nothing, i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo( 1, 1 ), i_Main_d__lc_tester_6_rc_().( in8 ) )
  end

  # Main.{tester_6}
  curry i_Main_d__lc_tester_6_rc_/2
  def i_Main_d__lc_tester_6_rc_( in8, in9 ) do
    aux2 =
      fn ( aux1 ) ->
        i_prim__toStrBigInt( aux1 )
      end
    [ in8 <> i_Prelude_d_Show_d_primNumShow( :idris_nothing, aux2, :Open, in9 ) | [] ]
  end

  # Main.{tester_5}
  curry i_Main_d__lc_tester_5_rc_/1
  def i_Main_d__lc_tester_5_rc_( _in4 ) do
    i_Main_d__lc_tester_4_rc_()
  end

  # Main.{tester_4}
  curry i_Main_d__lc_tester_4_rc_/1
  def i_Main_d__lc_tester_4_rc_( _in5 ) do
    i_Main_d__lc_tester_3_rc_()
  end

  # Main.{tester_3}
  curry i_Main_d__lc_tester_3_rc_/1
  def i_Main_d__lc_tester_3_rc_( in6 ) do
    i_Main_d__lc_tester_2_rc_().( in6 )
  end

  # Main.{tester_2}
  curry i_Main_d__lc_tester_2_rc_/2
  def i_Main_d__lc_tester_2_rc_( in6, in7 ) do
    i_Prelude_d_Applicative_d_SafeActors_d_Beh_s_a_s_implementation_s_of_s_Prelude_d_Applicative_d_Applicative_c__s_method_s__lt__42__gt_( :idris_nothing, :idris_nothing, :idris_nothing, in6, in7 )
  end

  # Main.{tester_1}
  curry i_Main_d__lc_tester_1_rc_/1
  def i_Main_d__lc_tester_1_rc_( _in2 ) do
    i_Main_d__lc_tester_0_rc_()
  end

  # Main.{tester_0}
  curry i_Main_d__lc_tester_0_rc_/1
  def i_Main_d__lc_tester_0_rc_( in3 ) do
    {:Pure, in3}
  end

  # Prelude.Traversable.traverse
  curry i_Prelude_d_Traversable_d_traverse/6
  def i_Prelude_d_Traversable_d_traverse( _e0, e1, e2, e3, e4, e5 ) do
    e1.( e2 ).( e3 ).( e4 ).( e5 )
  end

  # unsafePerformPrimIO
  def i_unsafePerformPrimIO(  ) do
    :idris_nothing
  end

  # ElixirFFI.unsafeReceive
  curry i_ElixirFFI_d_unsafeReceive/1
  def i_ElixirFFI_d_unsafeReceive( _e0 ) do
    aux2 =
      fn ( aux1 ) ->
        i_ElixirFFI_d_receivePtr( aux1 )
      end
    i_io_bind().( :idris_nothing ).( :idris_nothing ).( :idris_nothing ).( aux2 ).( i_ElixirFFI_d__lc_unsafeReceive_0_rc_() )
  end

  # ElixirFFI.{unsafeReceive_0}
  curry i_ElixirFFI_d__lc_unsafeReceive_0_rc_/1
  def i_ElixirFFI_d__lc_unsafeReceive_0_rc_( in0 ) do
    i_io_pure().( :idris_nothing ).( :idris_nothing ).( in0 )
  end

  # world
  curry i_world/1
  def i_world( e0 ) do
    e0
  end

  # Prelude.Bool.||
  curry i_Prelude_d_Bool_d__124__124_/2
  def i_Prelude_d_Bool_d__124__124_( e0, e1 ) do
    aux1 =
      case e0 do
        false ->
          Idrislib.LazyVal.force(e1)
        true ->
          true
      end
    aux1
  end

  # Prelude.natRange, go
  curry i_Prelude_d_natRange_c__s_go/2
  def i_Prelude_d_natRange_c__s_go( _e0, e1 ) do
    aux1 =
      case e1 do
        0 ->
          []
        _ ->
          in0 =
            e1 - 1
          [ in0 | i_Prelude_d_natRange_c__s_go( :idris_nothing, in0 ) ]
      end
    aux1
  end

  # Prelude.List.reverse, reverse'
  curry i_Prelude_d_List_d_reverse_c__s_reverse_prime_/3
  def i_Prelude_d_List_d_reverse_c__s_reverse_prime_( _e0, e1, e2 ) do
    aux1 =
      case e2 do
        [ in0 | in1 ] ->
          i_Prelude_d_List_d_reverse_c__s_reverse_prime_( :idris_nothing, [ in0 | e1 ], in1 )
        [] ->
          e1
      end
    aux1
  end

  # Decidable.Equality.Decidable.Equality.Char implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
  def i_Decidable_d_Equality_d_Decidable_d_Equality_d_Char_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq_c__s_primitiveNotEq(  ) do
    :idris_nothing
  end

  # Decidable.Equality.Decidable.Equality.Int implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
  def i_Decidable_d_Equality_d_Decidable_d_Equality_d_Int_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq_c__s_primitiveNotEq(  ) do
    :idris_nothing
  end

  # Decidable.Equality.Decidable.Equality.Integer implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
  def i_Decidable_d_Equality_d_Decidable_d_Equality_d_Integer_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq_c__s_primitiveNotEq(  ) do
    :idris_nothing
  end

  # Decidable.Equality.Decidable.Equality.ManagedPtr implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
  def i_Decidable_d_Equality_d_Decidable_d_Equality_d_ManagedPtr_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq_c__s_primitiveNotEq(  ) do
    :idris_nothing
  end

  # Decidable.Equality.Decidable.Equality.Ptr implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
  def i_Decidable_d_Equality_d_Decidable_d_Equality_d_Ptr_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq_c__s_primitiveNotEq(  ) do
    :idris_nothing
  end

  # Decidable.Equality.Decidable.Equality.String implementation of Decidable.Equality.DecEq, method decEq, primitiveNotEq
  def i_Decidable_d_Equality_d_Decidable_d_Equality_d_String_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq_c__s_primitiveNotEq(  ) do
    :idris_nothing
  end

  # Prelude.Prelude.Int implementation of Prelude.Enum, method enumFromTo, go
  curry i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go/4
  def i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go( _e0, _e1, e2, e3 ) do
    i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_( :idris_nothing, :idris_nothing, [], e3 - e2, e3 )
  end

  # Prelude.Prelude.Int implementation of Prelude.Enum, method enumFromTo, go'
  curry i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_/5
  def i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_( _e0, _e1, e2, e3, e4 ) do
    aux1 =
      case e3 do
        0 ->
          [ e4 | e2 ]
        _ ->
          in0 =
            e3 - 1
          i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_( :idris_nothing, :idris_nothing, [ e4 | e2 ], in0, e4 - 1 )
      end
    aux1
  end

  # Prelude.Prelude.Integer implementation of Prelude.Enum, method enumFromTo, go
  curry i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go/4
  def i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go( _e0, _e1, e2, e3 ) do
    i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_( :idris_nothing, :idris_nothing, e2, i_Prelude_d_List_d_reverse_c__s_reverse_prime_( :idris_nothing, [], i_Prelude_d_natRange_c__s_go( :idris_nothing, e3 - e2 + 1 ) ) )
  end

  # Prelude.Prelude.Integer implementation of Prelude.Enum, method enumFromTo, go'
  curry i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_/4
  def i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_( _e0, _e1, e2, e3 ) do
    aux1 =
      case e3 do
        [ in0 | in1 ] ->
          [ e2 + in0 | i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_( :idris_nothing, :idris_nothing, e2, in1 ) ]
        [] ->
          []
      end
    aux1
  end

  # Prelude.Applicative.SafeActors.Beh a implementation of Prelude.Applicative.Applicative, method <*>
  curry i_Prelude_d_Applicative_d_SafeActors_d_Beh_s_a_s_implementation_s_of_s_Prelude_d_Applicative_d_Applicative_c__s_method_s__lt__42__gt_/5
  def i_Prelude_d_Applicative_d_SafeActors_d_Beh_s_a_s_implementation_s_of_s_Prelude_d_Applicative_d_Applicative_c__s_method_s__lt__42__gt_( _e0, _e1, _e2, e3, e4 ) do
    {:Bind, e3, i_Prelude_d_Applicative_d__lc_SafeActors_d__at_Prelude_d_Applicative_d_Applicative_36_Beh_s_a_colon__bang__lt__42__gt__colon_0_lam_1_rc_().( e4 )}
  end

  # Prelude.Applicative.{SafeActors.@Prelude.Applicative.Applicative$Beh a:!<*>:0_lam_1}
  curry i_Prelude_d_Applicative_d__lc_SafeActors_d__at_Prelude_d_Applicative_d_Applicative_36_Beh_s_a_colon__bang__lt__42__gt__colon_0_lam_1_rc_/2
  def i_Prelude_d_Applicative_d__lc_SafeActors_d__at_Prelude_d_Applicative_d_Applicative_36_Beh_s_a_colon__bang__lt__42__gt__colon_0_lam_1_rc_( e4, in0 ) do
    {:Bind, e4, i_Prelude_d_Applicative_d__lc_SafeActors_d__at_Prelude_d_Applicative_d_Applicative_36_Beh_s_a_colon__bang__lt__42__gt__colon_0_lam_0_rc_().( in0 )}
  end

  # Prelude.Applicative.{SafeActors.@Prelude.Applicative.Applicative$Beh a:!<*>:0_lam_0}
  curry i_Prelude_d_Applicative_d__lc_SafeActors_d__at_Prelude_d_Applicative_d_Applicative_36_Beh_s_a_colon__bang__lt__42__gt__colon_0_lam_0_rc_/2
  def i_Prelude_d_Applicative_d__lc_SafeActors_d__at_Prelude_d_Applicative_d_Applicative_36_Beh_s_a_colon__bang__lt__42__gt__colon_0_lam_0_rc_( in0, in1 ) do
    {:Pure, in0.( in1 )}
  end

  # Decidable.Equality.Decidable.Equality.Bool implementation of Decidable.Equality.DecEq, method decEq
  curry i_Decidable_d_Equality_d_Decidable_d_Equality_d_Bool_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq/2
  def i_Decidable_d_Equality_d_Decidable_d_Equality_d_Bool_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq( e0, e1 ) do
    aux1 =
      case e1 do
        false ->
          aux2 =
            case e0 do
              false ->
                :Yes
              true ->
                :No
            end
          aux2
        true ->
          aux3 =
            case e0 do
              false ->
                :No
              true ->
                :Yes
            end
          aux3
      end
    aux1
  end

  # Prelude.Prelude.Int implementation of Prelude.Enum, method enumFromTo
  curry i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo/2
  def i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo( e0, e1 ) do
    aux1 =
      i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Int_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__lt__eq_( e0, e1 )
    aux2 =
      case aux1 do
        false ->
          i_Prelude_d_List_d_reverse_c__s_reverse_prime_( :idris_nothing, [], i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go( :idris_nothing, :idris_nothing, e1, e0 ) )
        true ->
          i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go( :idris_nothing, :idris_nothing, e0, e1 )
      end
    aux2
  end

  # Prelude.Prelude.Integer implementation of Prelude.Enum, method enumFromTo
  curry i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo/2
  def i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo( e0, e1 ) do
    aux1 =
      i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__lt__eq_( e0, e1 )
    aux2 =
      case aux1 do
        false ->
          i_Prelude_d_List_d_reverse_c__s_reverse_prime_( :idris_nothing, [], i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go( :idris_nothing, :idris_nothing, e1, e0 ) )
        true ->
          i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go( :idris_nothing, :idris_nothing, e0, e1 )
      end
    aux2
  end

  # Prelude.Interfaces.Prelude.Nat.Nat implementation of Prelude.Interfaces.Eq, method ==
  curry i_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Eq_c__s_method_s__eq__eq_/2
  def i_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Eq_c__s_method_s__eq__eq_( e0, e1 ) do
    aux1 =
      case e1 do
        0 ->
          aux2 =
            case e0 do
              0 ->
                true
              _ ->
                false
            end
          aux2
        _ ->
          in0 =
            e1 - 1
          aux3 =
            case e0 do
              0 ->
                false
              _ ->
                in1 =
                  e0 - 1
                i_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Eq_c__s_method_s__eq__eq_( in1, in0 )
            end
          aux3
        _ ->
          false
      end
    aux1
  end

  # Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Eq, method ==
  curry i_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Eq_c__s_method_s__eq__eq_/2
  def i_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Eq_c__s_method_s__eq__eq_( e0, e1 ) do
    aux1 =
      case e1 do
        {:User, in0} ->
          aux2 =
            case e0 do
              {:User, in1} ->
                i_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Eq_c__s_method_s__eq__eq_( in1, in0 )
              _ ->
                aux3 =
                  if ( i_Prelude_d_Show_d_precCon( e0 ) == i_Prelude_d_Show_d_precCon( e1 ) ) do
                    true
                  else
                    false
                  end
                aux3
            end
          aux2
        _ ->
          aux4 =
            if ( i_Prelude_d_Show_d_precCon( e0 ) == i_Prelude_d_Show_d_precCon( e1 ) ) do
              true
            else
              false
            end
          aux4
      end
    aux1
  end

  # Prelude.Foldable.Prelude.List.List implementation of Prelude.Foldable.Foldable, method foldr
  curry i_Prelude_d_Foldable_d_Prelude_d_List_d_List_s_implementation_s_of_s_Prelude_d_Foldable_d_Foldable_c__s_method_s_foldr/5
  def i_Prelude_d_Foldable_d_Prelude_d_List_d_List_s_implementation_s_of_s_Prelude_d_Foldable_d_Foldable_c__s_method_s_foldr( _e0, _e1, e2, e3, e4 ) do
    aux1 =
      case e4 do
        [ in0 | in1 ] ->
          e2.( in0 ).( i_Prelude_d_Foldable_d_Prelude_d_List_d_List_s_implementation_s_of_s_Prelude_d_Foldable_d_Foldable_c__s_method_s_foldr( :idris_nothing, :idris_nothing, e2, e3, in1 ) )
        [] ->
          e3
      end
    aux1
  end

  # Prelude.Monad.Prelude.List implementation of Prelude.Monad.Monad, method >>=
  curry i_Prelude_d_Monad_d_Prelude_d_List_s_implementation_s_of_s_Prelude_d_Monad_d_Monad_c__s_method_s__gt__gt__eq_/4
  def i_Prelude_d_Monad_d_Prelude_d_List_s_implementation_s_of_s_Prelude_d_Monad_d_Monad_c__s_method_s__gt__gt__eq_( _e0, _e1, e2, e3 ) do
    i_PE_concatMap_8faac41f( :idris_nothing, :idris_nothing, e3, e2 )
  end

  # Prelude.Interfaces.Prelude.Interfaces.Int implementation of Prelude.Interfaces.Ord, method <=
  curry i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Int_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__lt__eq_/2
  def i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Int_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__lt__eq_( e0, e1 ) do
    aux2 =
      i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Int_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( e0, e1 )
    aux3 =
      case aux2 do
        :LT ->
          true
        _ ->
          false
      end
    aux1 =
      aux3
    aux4 =
      case aux1 do
        false ->
          i_Prelude_d_Interfaces_d__lc_Prelude_d_Interfaces_d__at_Prelude_d_Interfaces_d_Ord_36_Int_colon__bang__lt__eq__colon_0_lam_0_rc_( e0, e1 )
        true ->
          true
      end
    aux4
  end

  # Prelude.Interfaces.{Prelude.Interfaces.@Prelude.Interfaces.Ord$Int:!<=:0_lam_0}
  curry i_Prelude_d_Interfaces_d__lc_Prelude_d_Interfaces_d__at_Prelude_d_Interfaces_d_Ord_36_Int_colon__bang__lt__eq__colon_0_lam_0_rc_/2
  def i_Prelude_d_Interfaces_d__lc_Prelude_d_Interfaces_d__at_Prelude_d_Interfaces_d_Ord_36_Int_colon__bang__lt__eq__colon_0_lam_0_rc_( e0, e1 ) do
    aux1 =
      if ( e0 == e1 ) do
        true
      else
        false
      end
    aux1
  end

  # Prelude.Interfaces.Prelude.Interfaces.Int implementation of Prelude.Interfaces.Ord, method compare
  curry i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Int_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare/2
  def i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Int_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( e0, e1 ) do
    aux2 =
      if ( e0 == e1 ) do
        true
      else
        false
      end
    aux1 =
      aux2
    aux3 =
      case aux1 do
        false ->
          aux5 =
            if ( e0 < e1 ) do
              true
            else
              false
            end
          aux4 =
            aux5
          aux6 =
            case aux4 do
              false ->
                :GT
              true ->
                :LT
            end
          aux6
        true ->
          :EQ
      end
    aux3
  end

  # Prelude.Interfaces.Prelude.Interfaces.Integer implementation of Prelude.Interfaces.Ord, method <=
  curry i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__lt__eq_/2
  def i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__lt__eq_( e0, e1 ) do
    aux2 =
      i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( e0, e1 )
    aux3 =
      case aux2 do
        :LT ->
          true
        _ ->
          false
      end
    aux1 =
      aux3
    aux4 =
      case aux1 do
        false ->
          i_Prelude_d_Interfaces_d__lc_Prelude_d_Interfaces_d__at_Prelude_d_Interfaces_d_Ord_36_Integer_colon__bang__lt__eq__colon_0_lam_0_rc_( e0, e1 )
        true ->
          true
      end
    aux4
  end

  # Prelude.Interfaces.{Prelude.Interfaces.@Prelude.Interfaces.Ord$Integer:!<=:0_lam_0}
  curry i_Prelude_d_Interfaces_d__lc_Prelude_d_Interfaces_d__at_Prelude_d_Interfaces_d_Ord_36_Integer_colon__bang__lt__eq__colon_0_lam_0_rc_/2
  def i_Prelude_d_Interfaces_d__lc_Prelude_d_Interfaces_d__at_Prelude_d_Interfaces_d_Ord_36_Integer_colon__bang__lt__eq__colon_0_lam_0_rc_( e0, e1 ) do
    aux1 =
      if ( e0 == e1 ) do
        true
      else
        false
      end
    aux1
  end

  # Prelude.Interfaces.Prelude.Interfaces.Integer implementation of Prelude.Interfaces.Ord, method compare
  curry i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare/2
  def i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( e0, e1 ) do
    aux2 =
      if ( e0 == e1 ) do
        true
      else
        false
      end
    aux1 =
      aux2
    aux3 =
      case aux1 do
        false ->
          aux5 =
            if ( e0 < e1 ) do
              true
            else
              false
            end
          aux4 =
            aux5
          aux6 =
            case aux4 do
              false ->
                :GT
              true ->
                :LT
            end
          aux6
        true ->
          :EQ
      end
    aux3
  end

  # Prelude.Interfaces.Prelude.Nat.Nat implementation of Prelude.Interfaces.Ord, method compare
  curry i_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare/2
  def i_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( e0, e1 ) do
    aux1 =
      case e1 do
        0 ->
          aux2 =
            case e0 do
              0 ->
                :EQ
              _ ->
                in0 =
                  e0 - 1
                :GT
            end
          aux2
        _ ->
          in1 =
            e1 - 1
          aux3 =
            case e0 do
              0 ->
                :LT
              _ ->
                in2 =
                  e0 - 1
                i_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( in2, in1 )
            end
          aux3
      end
    aux1
  end

  # Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method >=
  curry i_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__gt__eq_/2
  def i_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__gt__eq_( e0, e1 ) do
    aux2 =
      i_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( e0, e1 )
    aux3 =
      case aux2 do
        :GT ->
          true
        _ ->
          false
      end
    aux1 =
      aux3
    aux4 =
      case aux1 do
        false ->
          i_Prelude_d_Interfaces_d__lc_Prelude_d_Show_d__at_Prelude_d_Interfaces_d_Ord_36_Prec_colon__bang__gt__eq__colon_0_lam_0_rc_( e0, e1 )
        true ->
          true
      end
    aux4
  end

  # Prelude.Interfaces.{Prelude.Show.@Prelude.Interfaces.Ord$Prec:!>=:0_lam_0}
  curry i_Prelude_d_Interfaces_d__lc_Prelude_d_Show_d__at_Prelude_d_Interfaces_d_Ord_36_Prec_colon__bang__gt__eq__colon_0_lam_0_rc_/2
  def i_Prelude_d_Interfaces_d__lc_Prelude_d_Show_d__at_Prelude_d_Interfaces_d_Ord_36_Prec_colon__bang__gt__eq__colon_0_lam_0_rc_( e0, e1 ) do
    i_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Eq_c__s_method_s__eq__eq_( e0, e1 )
  end

  # Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method compare
  curry i_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare/2
  def i_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( e0, e1 ) do
    aux1 =
      case e1 do
        {:User, in0} ->
          aux2 =
            case e0 do
              {:User, in1} ->
                i_Prelude_d_Interfaces_d_Prelude_d_Nat_d_Nat_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( in1, in0 )
              _ ->
                i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( i_Prelude_d_Show_d_precCon( e0 ), i_Prelude_d_Show_d_precCon( e1 ) )
            end
          aux2
        _ ->
          i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( i_Prelude_d_Show_d_precCon( e0 ), i_Prelude_d_Show_d_precCon( e1 ) )
      end
    aux1
  end

  # Prelude.Traversable.Prelude.List implementation of Prelude.Traversable.Traversable, method traverse
  curry i_Prelude_d_Traversable_d_Prelude_d_List_s_implementation_s_of_s_Prelude_d_Traversable_d_Traversable_c__s_method_s_traverse/6
  def i_Prelude_d_Traversable_d_Prelude_d_List_s_implementation_s_of_s_Prelude_d_Traversable_d_Traversable_c__s_method_s_traverse( _e0, _e1, _e2, e3, e4, e5 ) do
    aux1 =
      case e5 do
        [ in0 | in1 ] ->
          aux2 =
            i_Prelude_d_Applicative_d_pure( :idris_nothing, e3, :idris_nothing )
          aux3 =
            i_Prelude_d_Applicative_d__lt__42__gt_( :idris_nothing, e3, :idris_nothing, :idris_nothing )
          aux4 =
            i_Prelude_d_Applicative_d__lt__42__gt_( :idris_nothing, e3, :idris_nothing, :idris_nothing )
          aux4.( aux3.( aux2.( i_Prelude_d_Traversable_d__lc_Prelude_d__at_Prelude_d_Traversable_d_Traversable_36_List_colon__bang_traverse_colon_0_lam_1_rc_() ) ).( e4.( in0 ) ) ).( i_Prelude_d_Traversable_d_Prelude_d_List_s_implementation_s_of_s_Prelude_d_Traversable_d_Traversable_c__s_method_s_traverse( :idris_nothing, :idris_nothing, :idris_nothing, e3, e4, in1 ) )
        [] ->
          aux5 =
            i_Prelude_d_Applicative_d_pure( :idris_nothing, e3, :idris_nothing )
          aux5.( [] )
      end
    aux1
  end

  # Prelude.Traversable.{Prelude.@Prelude.Traversable.Traversable$List:!traverse:0_lam_1}
  curry i_Prelude_d_Traversable_d__lc_Prelude_d__at_Prelude_d_Traversable_d_Traversable_36_List_colon__bang_traverse_colon_0_lam_1_rc_/1
  def i_Prelude_d_Traversable_d__lc_Prelude_d__at_Prelude_d_Traversable_d_Traversable_36_List_colon__bang_traverse_colon_0_lam_1_rc_( in2 ) do
    i_Prelude_d_Traversable_d__lc_Prelude_d__at_Prelude_d_Traversable_d_Traversable_36_List_colon__bang_traverse_colon_0_lam_0_rc_().( in2 )
  end

  # Prelude.Traversable.{Prelude.@Prelude.Traversable.Traversable$List:!traverse:0_lam_0}
  curry i_Prelude_d_Traversable_d__lc_Prelude_d__at_Prelude_d_Traversable_d_Traversable_36_List_colon__bang_traverse_colon_0_lam_0_rc_/2
  def i_Prelude_d_Traversable_d__lc_Prelude_d__at_Prelude_d_Traversable_d_Traversable_36_List_colon__bang_traverse_colon_0_lam_0_rc_( in2, in3 ) do
    [ in2 | in3 ]
  end

  # with block in Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method >
  curry i_with_s_block_s_in_s_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__gt_/3
  def i_with_s_block_s_in_s_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__gt_( e0, _e1, _e2 ) do
    aux1 =
      case e0 do
        :GT ->
          true
        _ ->
          false
      end
    aux1
  end

  # with block in Prelude.Strings.strM
  curry i_with_s_block_s_in_s_Prelude_d_Strings_d_strM/2
  def i_with_s_block_s_in_s_Prelude_d_Strings_d_strM( e0, e1 ) do
    aux1 =
      case e1 do
        :No ->
          :StrNil
        :Yes ->
          {:StrCons, String.first(e0)}
      end
    aux1
  end

  # with block in Prelude.Show.firstCharIs
  curry i_with_s_block_s_in_s_Prelude_d_Show_d_firstCharIs/3
  def i_with_s_block_s_in_s_Prelude_d_Show_d_firstCharIs( e0, _e1, e2 ) do
    aux1 =
      case e2 do
        {:StrCons, in0} ->
          e0.( in0 )
        :StrNil ->
          false
      end
    aux1
  end

  # with block in Prelude.Interfaces.Prelude.Interfaces.Int implementation of Prelude.Interfaces.Ord, method <
  curry i_with_s_block_s_in_s_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Int_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__lt_/3
  def i_with_s_block_s_in_s_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Int_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__lt_( e0, _e1, _e2 ) do
    aux1 =
      case e0 do
        :LT ->
          true
        _ ->
          false
      end
    aux1
  end

  # with block in Prelude.Interfaces.Prelude.Interfaces.Integer implementation of Prelude.Interfaces.Ord, method <
  curry i_with_s_block_s_in_s_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__lt_/3
  def i_with_s_block_s_in_s_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__lt_( e0, _e1, _e2 ) do
    aux1 =
      case e0 do
        :LT ->
          true
        _ ->
          false
      end
    aux1
  end

  # Main.case block in loop at Frequency.idr:27:8
  curry i_Main_d_case_s_block_s_in_s_loop_s_at_s_Frequency_d_idr_colon_27_colon_8/3
  def i_Main_d_case_s_block_s_in_s_loop_s_at_s_Frequency_d_idr_colon_27_colon_8( e0, e1, _e2 ) do
    aux1 =
      case e1 do
        {:GetFreq, in0} ->
          aux2 =
            case e0 do
              [ in1 | in2 ] ->
                {:Bind, {:Send, in0, {:Freq, in1}}, i_Main_d__lc_loop_Frequency__idr_27_8_case_lam_0_rc_().( in2 )}
              [] ->
                {:Bind, {:Send, in0, :NoneFree}, i_Main_d__lc_loop_Frequency__idr_27_8_case_lam_1_rc_()}
            end
          aux2
        {:RetFreq, in5} ->
          i_Main_d_loop( [ in5 | e0 ] )
      end
    aux1
  end

  # Main.{loop_Frequency__idr_27_8_case_lam_1}
  curry i_Main_d__lc_loop_Frequency__idr_27_8_case_lam_1_rc_/1
  def i_Main_d__lc_loop_Frequency__idr_27_8_case_lam_1_rc_( _in4 ) do
    i_Main_d_loop( [] )
  end

  # Main.{loop_Frequency__idr_27_8_case_lam_0}
  curry i_Main_d__lc_loop_Frequency__idr_27_8_case_lam_0_rc_/2
  def i_Main_d__lc_loop_Frequency__idr_27_8_case_lam_0_rc_( in2, _in3 ) do
    i_Main_d_loop( in2 )
  end

  # Main.case block in case block in loop at Frequency.idr:27:8 at Frequency.idr:29:12
  curry i_Main_d_case_s_block_s_in_s_case_s_block_s_in_s_loop_s_at_s_Frequency_d_idr_colon_27_colon_8_s_at_s_Frequency_d_idr_colon_29_colon_12/4
  def i_Main_d_case_s_block_s_in_s_case_s_block_s_in_s_loop_s_at_s_Frequency_d_idr_colon_27_colon_8_s_at_s_Frequency_d_idr_colon_29_colon_12( e0, e1, _e2, _e3 ) do
    aux1 =
      case e0 do
        [ in0 | in1 ] ->
          {:Bind, {:Send, e1, {:Freq, in0}}, i_Main_d__lc_loop_Frequency__idr_27_8_case_Frequency__idr_29_12_case_lam_0_rc_().( in1 )}
        [] ->
          {:Bind, {:Send, e1, :NoneFree}, i_Main_d__lc_loop_Frequency__idr_27_8_case_Frequency__idr_29_12_case_lam_1_rc_()}
      end
    aux1
  end

  # Main.{loop_Frequency__idr_27_8_case_Frequency__idr_29_12_case_lam_1}
  curry i_Main_d__lc_loop_Frequency__idr_27_8_case_Frequency__idr_29_12_case_lam_1_rc_/1
  def i_Main_d__lc_loop_Frequency__idr_27_8_case_Frequency__idr_29_12_case_lam_1_rc_( _in3 ) do
    i_Main_d_loop( [] )
  end

  # Main.{loop_Frequency__idr_27_8_case_Frequency__idr_29_12_case_lam_0}
  curry i_Main_d__lc_loop_Frequency__idr_27_8_case_Frequency__idr_29_12_case_lam_0_rc_/2
  def i_Main_d__lc_loop_Frequency__idr_27_8_case_Frequency__idr_29_12_case_lam_0_rc_( in1, _in2 ) do
    i_Main_d_loop( in1 )
  end

  # Main.case block in phone at Frequency.idr:43:8
  curry i_Main_d_case_s_block_s_in_s_phone_s_at_s_Frequency_d_idr_colon_43_colon_8/7
  def i_Main_d_case_s_block_s_in_s_phone_s_at_s_Frequency_d_idr_colon_43_colon_8( e0, e1, e2, _e3, _e4, e5, _e6 ) do
    aux1 =
      case e5 do
        {:Freq, in0} ->
          aux3 =
            fn ( aux2 ) ->
              i_prim__toStrInt( aux2 )
            end
          {:Bind, {:LiftIO, i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, "phone " <> e0 <> " got a frequency: " <> i_Prelude_d_Show_d_primNumShow( :idris_nothing, aux3, :Open, in0 ) <> "\n" )}, i_Main_d__lc_phone_Frequency__idr_43_8_case_lam_3_rc_().( e1 ).( in0 ).( e0 ).( e2 )}
        _ ->
          {:Bind, {:LiftIO, i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, "phone " <> e0 <> " couldn't get frequency!" <> "\n" )}, i_Main_d__lc_phone_Frequency__idr_43_8_case_lam_5_rc_().( e0 ).( e1 ).( e2 )}
      end
    aux1
  end

  # Main.{phone_Frequency__idr_43_8_case_lam_5}
  curry i_Main_d__lc_phone_Frequency__idr_43_8_case_lam_5_rc_/4
  def i_Main_d__lc_phone_Frequency__idr_43_8_case_lam_5_rc_( e0, e1, e2, _in5 ) do
    {:Bind, {:LiftIO, i_ElixirFFI_d_sleep().( 1000 )}, i_Main_d__lc_phone_Frequency__idr_43_8_case_lam_4_rc_().( e0 ).( e1 ).( e2 )}
  end

  # Main.{phone_Frequency__idr_43_8_case_lam_4}
  curry i_Main_d__lc_phone_Frequency__idr_43_8_case_lam_4_rc_/4
  def i_Main_d__lc_phone_Frequency__idr_43_8_case_lam_4_rc_( e0, e1, e2, _in6 ) do
    i_Main_d_phone( e0, e1, e2 )
  end

  # Main.{phone_Frequency__idr_43_8_case_lam_3}
  curry i_Main_d__lc_phone_Frequency__idr_43_8_case_lam_3_rc_/5
  def i_Main_d__lc_phone_Frequency__idr_43_8_case_lam_3_rc_( e1, in0, e0, e2, _in1 ) do
    {:Bind, {:LiftIO, i_ElixirFFI_d_sleep().( 1500 )}, i_Main_d__lc_phone_Frequency__idr_43_8_case_lam_2_rc_().( e1 ).( in0 ).( e0 ).( e2 )}
  end

  # Main.{phone_Frequency__idr_43_8_case_lam_2}
  curry i_Main_d__lc_phone_Frequency__idr_43_8_case_lam_2_rc_/5
  def i_Main_d__lc_phone_Frequency__idr_43_8_case_lam_2_rc_( e1, in0, e0, e2, _in2 ) do
    {:Bind, {:Send, e1, {:RetFreq, in0}}, i_Main_d__lc_phone_Frequency__idr_43_8_case_lam_1_rc_().( e0 ).( e2 )}
  end

  # Main.{phone_Frequency__idr_43_8_case_lam_1}
  curry i_Main_d__lc_phone_Frequency__idr_43_8_case_lam_1_rc_/3
  def i_Main_d__lc_phone_Frequency__idr_43_8_case_lam_1_rc_( e0, e2, _in3 ) do
    {:Bind, {:LiftIO, i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, "phone " <> e0 <> " has finished calling." <> "\n" )}, i_Main_d__lc_phone_Frequency__idr_43_8_case_lam_0_rc_().( e2 )}
  end

  # Main.{phone_Frequency__idr_43_8_case_lam_0}
  curry i_Main_d__lc_phone_Frequency__idr_43_8_case_lam_0_rc_/2
  def i_Main_d__lc_phone_Frequency__idr_43_8_case_lam_0_rc_( e2, _in4 ) do
    {:Send, e2, {}}
  end

  # case block in io_bind at IO.idr:107:34
  curry i_case_s_block_s_in_s_io_bind_s_at_s_IO_d_idr_colon_107_colon_34/8
  def i_case_s_block_s_in_s_io_bind_s_at_s_IO_d_idr_colon_107_colon_34( _e0, _e1, _e2, _e3, _e4, e5, _e6, e7 ) do
    e7.( e5 )
  end

  # case block in Void at (casefun Void)
  def i_case_s_block_s_in_s_Void_s_at_s__lp_casefun_s_Void_rp_(  ) do
    :idris_nothing
  end

  # <<Void eliminator>>
  def i__lt__lt_Void_s_eliminator_gt__gt_(  ) do
    :idris_nothing
  end

  # {runMain_0}
  def runMain0(  ) do
    aux1 =
      i_Main_d_main(  )
    Idrislib.LazyVal.force(aux1.( :idris_nothing ))
  end
end

IdrisElixir.runMain0()
