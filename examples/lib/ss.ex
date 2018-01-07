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
  import Idrislib

  # Prelude.Bool.&&
  curry i_Prelude_d_Bool_d__and__and_/2
  def i_Prelude_d_Bool_d__and__and_( e0, e1 ) do
    aux1 =
      case e0 do
        false ->
          false
        true ->
          IdrisRts.force(e1)
      end
    aux1
  end

  # Prelude.Monad.>>=
  curry i_Prelude_d_Monad_d__gt__gt__eq_/4
  def i_Prelude_d_Monad_d__gt__gt__eq_( _e0, e1, e2, e3 ) do
    e1.( e2 ).( e3 )
  end

  # Force
  curry i_Force/3
  def i_Force( _e0, _e1, e2 ) do
    IdrisRts.force(e2)
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

  # ElixirFFI.gengencall
  curry i_ElixirFFI_d_gengencall/3
  def i_ElixirFFI_d_gengencall( e0, e1, _i_w ) do
    Idrislib.Gengenserver.call( e0, e1 )
  end

  # ElixirFFI.gengenserver
  curry i_ElixirFFI_d_gengenserver/7
  def i_ElixirFFI_d_gengenserver( _e0, _e1, _e2, _e3, e4, e5, _i_w ) do
    Idrislib.Gengenserver.idris_start_link( { e4 , e5 } )
  end

  # Main.hc
  curry i_Main_d_hc/1
  def i_Main_d_hc( e0 ) do
    aux1 =
      case e0 do
        {:MkReq, in0, in1} ->
          {:Reply, in1, in1 + in0}
      end
    aux1
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
          IdrisRts.force(e3)
        true ->
          IdrisRts.force(e2)
      end
    aux1
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

  # Main.main
  def i_Main_d_main(  ) do
    aux2 =
      fn ( aux1 ) ->
        i_Main_d_ssinit( aux1 )
      end
    aux4 =
      fn ( aux3 ) ->
        i_Main_d_hc( aux3 )
      end
    i_io_bind().( :idris_nothing ).( :idris_nothing ).( :idris_nothing ).( i_ElixirFFI_d_gengenserver().( :idris_nothing ).( :idris_nothing ).( :idris_nothing ).( :idris_nothing ).( aux2 ).( aux4 ) ).( i_Main_d__lc_main_15_rc_() )
  end

  # Main.{main_15}
  curry i_Main_d__lc_main_15_rc_/1
  def i_Main_d__lc_main_15_rc_( in0 ) do
    aux1 =
      case in0 do
        { _in5 , in6 } ->
          aux2 =
            i_Prelude_d_Monad_d__gt__gt__eq_( :idris_nothing, i_Main_d__lc_main_3_rc_(), :idris_nothing, :idris_nothing )
          aux2.( i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, "spawned\n" ) ).( i_Main_d__lc_main_14_rc_().( in6 ) )
      end
    aux1
  end

  # Main.{main_14}
  curry i_Main_d__lc_main_14_rc_/2
  def i_Main_d__lc_main_14_rc_( in6, _in7 ) do
    aux2 =
      fn ( aux1 ) ->
        i_prim__toStrInt( aux1 )
      end
    aux3 =
      i_Prelude_d_Monad_d__gt__gt__eq_( :idris_nothing, i_Main_d__lc_main_7_rc_(), :idris_nothing, :idris_nothing )
    aux3.( i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, i_Prelude_d_Show_d_primNumShow( :idris_nothing, aux2, :Open, i_Main_d_sumTree( {:Node, {:Leaf, 9}, {:Leaf, 4}} ) ) <> "\n" ) ).( i_Main_d__lc_main_13_rc_().( in6 ) )
  end

  # Main.{main_13}
  curry i_Main_d__lc_main_13_rc_/2
  def i_Main_d__lc_main_13_rc_( in6, _in8 ) do
    aux1 =
      i_Prelude_d_Monad_d__gt__gt__eq_( :idris_nothing, i_Main_d__lc_main_11_rc_(), :idris_nothing, :idris_nothing )
    aux1.( i_ElixirFFI_d_gengencall().( in6 ).( 2 ) ).( i_Main_d__lc_main_12_rc_() )
  end

  # Main.{main_12}
  curry i_Main_d__lc_main_12_rc_/1
  def i_Main_d__lc_main_12_rc_( _in9 ) do
    i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, "yoyo\n" )
  end

  # Main.{main_11}
  curry i_Main_d__lc_main_11_rc_/1
  def i_Main_d__lc_main_11_rc_( _in1 ) do
    i_Main_d__lc_main_10_rc_()
  end

  # Main.{main_10}
  curry i_Main_d__lc_main_10_rc_/1
  def i_Main_d__lc_main_10_rc_( _in2 ) do
    i_Main_d__lc_main_9_rc_()
  end

  # Main.{main_9}
  curry i_Main_d__lc_main_9_rc_/1
  def i_Main_d__lc_main_9_rc_( in3 ) do
    i_Main_d__lc_main_8_rc_().( in3 )
  end

  # Main.{main_8}
  curry i_Main_d__lc_main_8_rc_/2
  def i_Main_d__lc_main_8_rc_( in3, in4 ) do
    i_io_bind().( :idris_nothing ).( :idris_nothing ).( :idris_nothing ).( in3 ).( in4 )
  end

  # Main.{main_7}
  curry i_Main_d__lc_main_7_rc_/1
  def i_Main_d__lc_main_7_rc_( _in1 ) do
    i_Main_d__lc_main_6_rc_()
  end

  # Main.{main_6}
  curry i_Main_d__lc_main_6_rc_/1
  def i_Main_d__lc_main_6_rc_( _in2 ) do
    i_Main_d__lc_main_5_rc_()
  end

  # Main.{main_5}
  curry i_Main_d__lc_main_5_rc_/1
  def i_Main_d__lc_main_5_rc_( in3 ) do
    i_Main_d__lc_main_4_rc_().( in3 )
  end

  # Main.{main_4}
  curry i_Main_d__lc_main_4_rc_/2
  def i_Main_d__lc_main_4_rc_( in3, in4 ) do
    i_io_bind().( :idris_nothing ).( :idris_nothing ).( :idris_nothing ).( in3 ).( in4 )
  end

  # Main.{main_3}
  curry i_Main_d__lc_main_3_rc_/1
  def i_Main_d__lc_main_3_rc_( _in1 ) do
    i_Main_d__lc_main_2_rc_()
  end

  # Main.{main_2}
  curry i_Main_d__lc_main_2_rc_/1
  def i_Main_d__lc_main_2_rc_( _in2 ) do
    i_Main_d__lc_main_1_rc_()
  end

  # Main.{main_1}
  curry i_Main_d__lc_main_1_rc_/1
  def i_Main_d__lc_main_1_rc_( in3 ) do
    i_Main_d__lc_main_0_rc_().( in3 )
  end

  # Main.{main_0}
  curry i_Main_d__lc_main_0_rc_/2
  def i_Main_d__lc_main_0_rc_( in3, in4 ) do
    i_io_bind().( :idris_nothing ).( :idris_nothing ).( :idris_nothing ).( in3 ).( in4 )
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

  # prim__addInt
  curry i_prim__addInt/2
  def i_prim__addInt( op0, op1 ) do
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

  # prim__sizeofPtr
  def i_prim__sizeofPtr(  ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__sizeofPtr")
  end

  # prim__sltBigInt
  curry i_prim__sltBigInt/2
  def i_prim__sltBigInt( op0, op1 ) do
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

  # run__IO
  curry i_run__IO/2
  def i_run__IO( _e0, e1 ) do
    e1.( :idris_nothing )
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

  # Main.ssinit
  curry i_Main_d_ssinit/1
  def i_Main_d_ssinit( _e0 ) do
    {:Ok, 0}
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

  # Main.sumTree
  curry i_Main_d_sumTree/1
  def i_Main_d_sumTree( e0 ) do
    aux1 =
      case e0 do
        {:Leaf, in0} ->
          in0
        {:Node, in1, in2} ->
          i_Main_d_sumTree( in1 ) + i_Main_d_sumTree( in2 )
      end
    aux1
  end

  # unsafePerformPrimIO
  def i_unsafePerformPrimIO(  ) do
    :idris_nothing
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
          IdrisRts.force(e1)
        true ->
          true
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

  # case block in io_bind at IO.idr:107:34
  curry i_case_s_block_s_in_s_io_bind_s_at_s_IO_d_idr_colon_107_colon_34/8
  def i_case_s_block_s_in_s_io_bind_s_at_s_IO_d_idr_colon_107_colon_34( _e0, _e1, _e2, _e3, _e4, e5, _e6, e7 ) do
    e7.( e5 )
  end

  # Main.case block in main at SumServer.idr:20:15
  curry i_Main_d_case_s_block_s_in_s_main_s_at_s_SumServer_d_idr_colon_20_colon_15/3
  def i_Main_d_case_s_block_s_in_s_main_s_at_s_SumServer_d_idr_colon_20_colon_15( e0, e1, _e2 ) do
    aux1 =
      case e1 do
        { _in0 , in1 } ->
          aux2 =
            i_Prelude_d_Monad_d__gt__gt__eq_( :idris_nothing, e0, :idris_nothing, :idris_nothing )
          aux2.( i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, "spawned\n" ) ).( i_Main_d__lc_main_SumServer__idr_20_15_case_lam_2_rc_().( e0 ).( in1 ) )
      end
    aux1
  end

  # Main.{main_SumServer__idr_20_15_case_lam_2}
  curry i_Main_d__lc_main_SumServer__idr_20_15_case_lam_2_rc_/3
  def i_Main_d__lc_main_SumServer__idr_20_15_case_lam_2_rc_( e0, in1, _in2 ) do
    aux2 =
      fn ( aux1 ) ->
        i_prim__toStrInt( aux1 )
      end
    aux3 =
      i_Prelude_d_Monad_d__gt__gt__eq_( :idris_nothing, e0, :idris_nothing, :idris_nothing )
    aux3.( i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, i_Prelude_d_Show_d_primNumShow( :idris_nothing, aux2, :Open, i_Main_d_sumTree( {:Node, {:Leaf, 9}, {:Leaf, 4}} ) ) <> "\n" ) ).( i_Main_d__lc_main_SumServer__idr_20_15_case_lam_1_rc_().( e0 ).( in1 ) )
  end

  # Main.{main_SumServer__idr_20_15_case_lam_1}
  curry i_Main_d__lc_main_SumServer__idr_20_15_case_lam_1_rc_/3
  def i_Main_d__lc_main_SumServer__idr_20_15_case_lam_1_rc_( e0, in1, _in3 ) do
    aux1 =
      i_Prelude_d_Monad_d__gt__gt__eq_( :idris_nothing, e0, :idris_nothing, :idris_nothing )
    aux1.( i_ElixirFFI_d_gengencall().( in1 ).( 2 ) ).( i_Main_d__lc_main_SumServer__idr_20_15_case_lam_0_rc_() )
  end

  # Main.{main_SumServer__idr_20_15_case_lam_0}
  curry i_Main_d__lc_main_SumServer__idr_20_15_case_lam_0_rc_/1
  def i_Main_d__lc_main_SumServer__idr_20_15_case_lam_0_rc_( _in4 ) do
    i_Prelude_d_Interactive_d_putStr_prime_( :idris_nothing, "yoyo\n" )
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
    IdrisRts.force(aux1.( :idris_nothing ))
  end
end

IdrisElixir.runMain0()
