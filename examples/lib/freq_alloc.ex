# This file was compiled by idris-elixir.

defmodule IdrisElixir do
  import Idrislib

  # {runMain_0}
  def runMain0(  ) do
    aux1 =
      i_Main_d_tester(  )
    aux2 =
      i_Elixir_d_SafeActors_d_runBeh( :idris_nothing, :idris_nothing, aux1 )
    Idrislib.LazyVal.force(aux2.( :idris_nothing ))
  end

  # <<Void eliminator>>
  def i__lt__lt_Void_s_eliminator_gt__gt_(  ) do
    :idris_nothing
  end

  # case block in Void at (casefun Void)
  def i_case_s_block_s_in_s_Void_s_at_s__lp_casefun_s_Void_rp_(  ) do
    :idris_nothing
  end

  # Main.case block in tester at Main.idr:68:8-35
  curry i_Main_d_case_s_block_s_in_s_tester_s_at_s_Main_d_idr_colon_68_colon_8_45_35/5
  def i_Main_d_case_s_block_s_in_s_tester_s_at_s_Main_d_idr_colon_68_colon_8_45_35( _arg0, _arg1, _arg2, _arg3, _arg4 ) do
    {:LiftIO, i_Main_d__lc_tester_Main__idr_68_8_68_35_case_lam_52_rc_()}
  end

  # Main.{tester_Main__idr_68_8_68_35_case_lam_52}
  curry i_Main_d__lc_tester_Main__idr_68_8_68_35_case_lam_52_rc_/1
  def i_Main_d__lc_tester_Main__idr_68_8_68_35_case_lam_52_rc_( _lift0 ) do
    in6 =
      IO.puts( "Done!\n" )
    {}
  end

  # Main.case block in phone at Main.idr:42:8-11
  curry i_Main_d_case_s_block_s_in_s_phone_s_at_s_Main_d_idr_colon_42_colon_8_45_11/7
  def i_Main_d_case_s_block_s_in_s_phone_s_at_s_Main_d_idr_colon_42_colon_8_45_11( arg0, arg1, arg2, _arg3, _arg4, arg5, _arg6 ) do
    aux1 =
      case arg5 do
        {:Freq, in7} ->
          {:Bind, {:LiftIO, i_Main_d__lc_phone_Main__idr_42_8_42_11_case_lam_43_rc_().( arg0 ).( in7 )}, i_Main_d__lc_phone_Main__idr_42_8_42_11_case_lam_48_rc_().( arg1 ).( in7 ).( arg0 ).( arg2 )}
        _ ->
          {:Bind, {:LiftIO, i_Main_d__lc_phone_Main__idr_42_8_42_11_case_lam_49_rc_().( arg0 )}, i_Main_d__lc_phone_11_rc_().( arg0 ).( arg1 ).( arg2 )}
      end
    aux1
  end

  # Main.{phone_Main__idr_42_8_42_11_case_lam_49}
  curry i_Main_d__lc_phone_Main__idr_42_8_42_11_case_lam_49_rc_/2
  def i_Main_d__lc_phone_Main__idr_42_8_42_11_case_lam_49_rc_( lift0, _lift1 ) do
    in17 =
      IO.puts( "phone " <> lift0 <> " couldn't get frequency!" <> "\n" )
    {}
  end

  # Main.{phone_Main__idr_42_8_42_11_case_lam_48}
  curry i_Main_d__lc_phone_Main__idr_42_8_42_11_case_lam_48_rc_/5
  def i_Main_d__lc_phone_Main__idr_42_8_42_11_case_lam_48_rc_( lift0, lift1, lift2, lift3, _lift4 ) do
    {:Bind, {:LiftIO, i_IO_d_sleep().( 1500 )}, i_Main_d__lc_phone_Main__idr_42_8_42_11_case_lam_47_rc_().( lift0 ).( lift1 ).( lift2 ).( lift3 )}
  end

  # Main.{phone_Main__idr_42_8_42_11_case_lam_47}
  curry i_Main_d__lc_phone_Main__idr_42_8_42_11_case_lam_47_rc_/5
  def i_Main_d__lc_phone_Main__idr_42_8_42_11_case_lam_47_rc_( lift0, lift1, lift2, lift3, _lift4 ) do
    {:Bind, {:Send, lift0, {:RetFreq, lift1}}, i_Main_d__lc_phone_Main__idr_42_8_42_11_case_lam_46_rc_().( lift2 ).( lift3 )}
  end

  # Main.{phone_Main__idr_42_8_42_11_case_lam_46}
  curry i_Main_d__lc_phone_Main__idr_42_8_42_11_case_lam_46_rc_/3
  def i_Main_d__lc_phone_Main__idr_42_8_42_11_case_lam_46_rc_( lift0, lift1, _lift2 ) do
    {:Bind, {:LiftIO, i_Main_d__lc_phone_Main__idr_42_8_42_11_case_lam_44_rc_().( lift0 )}, i_Main_d__lc_phone_5_rc_().( lift1 )}
  end

  # Main.{phone_Main__idr_42_8_42_11_case_lam_44}
  curry i_Main_d__lc_phone_Main__idr_42_8_42_11_case_lam_44_rc_/2
  def i_Main_d__lc_phone_Main__idr_42_8_42_11_case_lam_44_rc_( lift0, _lift1 ) do
    in14 =
      IO.puts( "phone " <> lift0 <> " has finished calling." <> "\n" )
    {}
  end

  # Main.{phone_Main__idr_42_8_42_11_case_lam_43}
  curry i_Main_d__lc_phone_Main__idr_42_8_42_11_case_lam_43_rc_/3
  def i_Main_d__lc_phone_Main__idr_42_8_42_11_case_lam_43_rc_( lift0, lift1, _lift2 ) do
    aux2 =
      fn ( aux1 ) ->
        i_prim__toStrInt( aux1 )
      end
    in9 =
      IO.puts( "phone " <> lift0 <> " got a frequency: " <> i_Prelude_d_Show_d_primNumShow( :idris_nothing, aux2, :Open, lift1 ) <> "\n" )
    {}
  end

  # Main.case block in case block in loop at Main.idr:26:8 at Main.idr:28:12-15
  curry i_Main_d_case_s_block_s_in_s_case_s_block_s_in_s_loop_s_at_s_Main_d_idr_colon_26_colon_8_s_at_s_Main_d_idr_colon_28_colon_12_45_15/4
  def i_Main_d_case_s_block_s_in_s_case_s_block_s_in_s_loop_s_at_s_Main_d_idr_colon_26_colon_8_s_at_s_Main_d_idr_colon_28_colon_12_45_15( arg0, arg1, _arg2, _arg3 ) do
    aux1 =
      case arg0 do
        [ in4 | in5 ] ->
          {:Bind, {:Send, arg1, {:Freq, in4}}, i_Main_d__lc_loop_0_rc_().( in5 )}
        [] ->
          {:Bind, {:Send, arg1, :NoneFree}, i_Main_d__lc_loop_1_rc_()}
      end
    aux1
  end

  # Main.case block in loop at Main.idr:26:8
  curry i_Main_d_case_s_block_s_in_s_loop_s_at_s_Main_d_idr_colon_26_colon_8/3
  def i_Main_d_case_s_block_s_in_s_loop_s_at_s_Main_d_idr_colon_26_colon_8( arg0, arg1, _arg2 ) do
    aux1 =
      case arg1 do
        {:GetFreq, in3} ->
          aux2 =
            case arg0 do
              [ in4 | in5 ] ->
                {:Bind, {:Send, in3, {:Freq, in4}}, i_Main_d__lc_loop_0_rc_().( in5 )}
              [] ->
                {:Bind, {:Send, in3, :NoneFree}, i_Main_d__lc_loop_1_rc_()}
            end
          aux2
        {:RetFreq, in8} ->
          i_Main_d_loop( [ in8 | arg0 ] )
      end
    aux1
  end

  # case block in io_bind at IO.idr:108:34-36
  curry i_case_s_block_s_in_s_io_bind_s_at_s_IO_d_idr_colon_108_colon_34_45_36/8
  def i_case_s_block_s_in_s_io_bind_s_at_s_IO_d_idr_colon_108_colon_34_45_36( _arg0, _arg1, _arg2, _arg3, _arg4, arg5, _arg6, arg7 ) do
    arg7.( arg5 )
  end

  # with block in Prelude.Interfaces.Prelude.Interfaces.Integer implementation of Prelude.Interfaces.Ord, method <
  curry i_with_s_block_s_in_s_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__lt_/3
  def i_with_s_block_s_in_s_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__lt_( arg0, _arg1, _arg2 ) do
    aux1 =
      case arg0 do
        :LT ->
          true
        _ ->
          false
      end
    aux1
  end

  # with block in Prelude.Interfaces.Prelude.Interfaces.Int implementation of Prelude.Interfaces.Ord, method <
  curry i_with_s_block_s_in_s_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Int_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__lt_/3
  def i_with_s_block_s_in_s_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Int_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__lt_( arg0, _arg1, _arg2 ) do
    aux1 =
      case arg0 do
        :LT ->
          true
        _ ->
          false
      end
    aux1
  end

  # with block in Prelude.Show.firstCharIs
  curry i_with_s_block_s_in_s_Prelude_d_Show_d_firstCharIs/3
  def i_with_s_block_s_in_s_Prelude_d_Show_d_firstCharIs( arg0, _arg1, arg2 ) do
    aux1 =
      case arg2 do
        {:StrCons, in3} ->
          arg0.( in3 )
        :StrNil ->
          false
      end
    aux1
  end

  # with block in Prelude.Strings.strM
  curry i_with_s_block_s_in_s_Prelude_d_Strings_d_strM/2
  def i_with_s_block_s_in_s_Prelude_d_Strings_d_strM( arg0, arg1 ) do
    aux1 =
      case arg1 do
        :No ->
          :StrNil
        :Yes ->
          {:StrCons, String.first(arg0)}
      end
    aux1
  end

  # with block in Prelude.Interfaces.Prelude.Show.Prec implementation of Prelude.Interfaces.Ord, method >
  curry i_with_s_block_s_in_s_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__gt_/3
  def i_with_s_block_s_in_s_Prelude_d_Interfaces_d_Prelude_d_Show_d_Prec_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s__gt_( arg0, _arg1, _arg2 ) do
    aux1 =
      case arg0 do
        :GT ->
          true
        _ ->
          false
      end
    aux1
  end

  # Prelude.Traversable.Prelude.List implementation of Prelude.Traversable.Traversable, method traverse
  curry i_Prelude_d_Traversable_d_Prelude_d_List_s_implementation_s_of_s_Prelude_d_Traversable_d_Traversable_c__s_method_s_traverse/6
  def i_Prelude_d_Traversable_d_Prelude_d_List_s_implementation_s_of_s_Prelude_d_Traversable_d_Traversable_c__s_method_s_traverse( _arg0, _arg1, _arg2, arg3, arg4, arg5 ) do
    aux1 =
      case arg5 do
        [ in6 | in7 ] ->
          aux2 =
            case arg3 do
              {:"constructor_s_of_s_Prelude.Applicative.Applicative", _in14, in15} ->
                aux3 =
                  case arg3 do
                    {:"constructor_s_of_s_Prelude.Applicative.Applicative", _in12, in13} ->
                      aux4 =
                        case arg3 do
                          {:"constructor_s_of_s_Prelude.Applicative.Applicative", in10, _in11} ->
                            in10.( :idris_nothing ).( i_Prelude_d_Traversable_d__lc_Prelude_d__at_Prelude_d_Traversable_d_Traversable_36_List_colon__bang_traverse_colon_0_lam_38_rc_() )
                        end
                      in13.( :idris_nothing ).( :idris_nothing ).( aux4 ).( arg4.( in6 ) )
                  end
                in15.( :idris_nothing ).( :idris_nothing ).( aux3 ).( i_Prelude_d_Traversable_d_Prelude_d_List_s_implementation_s_of_s_Prelude_d_Traversable_d_Traversable_c__s_method_s_traverse( :idris_nothing, :idris_nothing, :idris_nothing, arg3, arg4, in7 ) )
            end
          aux2
        [] ->
          aux5 =
            case arg3 do
              {:"constructor_s_of_s_Prelude.Applicative.Applicative", in16, _in17} ->
                in16.( :idris_nothing ).( [] )
            end
          aux5
      end
    aux1
  end

  # Prelude.Traversable.{Prelude.@Prelude.Traversable.Traversable$List:!traverse:0_lam_38}
  curry i_Prelude_d_Traversable_d__lc_Prelude_d__at_Prelude_d_Traversable_d_Traversable_36_List_colon__bang_traverse_colon_0_lam_38_rc_/2
  def i_Prelude_d_Traversable_d__lc_Prelude_d__at_Prelude_d_Traversable_d_Traversable_36_List_colon__bang_traverse_colon_0_lam_38_rc_( lift0, lift1 ) do
    [ lift0 | lift1 ]
  end

  # Prelude.Interfaces.Prelude.Interfaces.Integer implementation of Prelude.Interfaces.Ord, method compare
  curry i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare/2
  def i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( arg0, arg1 ) do
    aux1 =
      if ( arg0 == arg1 ) do
        :EQ
      else
        aux2 =
          if ( arg0 < arg1 ) do
            :LT
          else
            :GT
          end
        aux2
      end
    aux1
  end

  # Prelude.Interfaces.Prelude.Interfaces.Int implementation of Prelude.Interfaces.Ord, method compare
  curry i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Int_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare/2
  def i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Int_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( arg0, arg1 ) do
    aux1 =
      if ( arg0 == arg1 ) do
        :EQ
      else
        aux2 =
          if ( arg0 < arg1 ) do
            :LT
          else
            :GT
          end
        aux2
      end
    aux1
  end

  # Prelude.Foldable.Prelude.List.List implementation of Prelude.Foldable.Foldable, method foldr
  curry i_Prelude_d_Foldable_d_Prelude_d_List_d_List_s_implementation_s_of_s_Prelude_d_Foldable_d_Foldable_c__s_method_s_foldr/5
  def i_Prelude_d_Foldable_d_Prelude_d_List_d_List_s_implementation_s_of_s_Prelude_d_Foldable_d_Foldable_c__s_method_s_foldr( _arg0, _arg1, arg2, arg3, arg4 ) do
    aux1 =
      case arg4 do
        [ in5 | in6 ] ->
          arg2.( in5 ).( i_Prelude_d_Foldable_d_Prelude_d_List_d_List_s_implementation_s_of_s_Prelude_d_Foldable_d_Foldable_c__s_method_s_foldr( :idris_nothing, :idris_nothing, arg2, arg3, in6 ) )
        [] ->
          arg3
      end
    aux1
  end

  # Prelude.Prelude.Integer implementation of Prelude.Enum, method enumFromTo
  curry i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo/2
  def i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo( arg0, arg1 ) do
    aux2 =
      i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( arg0, arg1 )
    aux3 =
      case aux2 do
        :LT ->
          true
        _ ->
          aux4 =
            if ( arg0 == arg1 ) do
              true
            else
              false
            end
          aux4
      end
    aux1 =
      aux3
    aux5 =
      case aux1 do
        false ->
          i_Prelude_d_List_d_reverse_c__s_reverse_prime_( :idris_nothing, [], i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_( :idris_nothing, :idris_nothing, arg1, i_Prelude_d_List_d_reverse_c__s_reverse_prime_( :idris_nothing, [], i_Prelude_d_natRange_c__s_go( :idris_nothing, arg0 - arg1 + 1 ) ) ) )
        true ->
          i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_( :idris_nothing, :idris_nothing, arg0, i_Prelude_d_List_d_reverse_c__s_reverse_prime_( :idris_nothing, [], i_Prelude_d_natRange_c__s_go( :idris_nothing, arg1 - arg0 + 1 ) ) )
      end
    aux5
  end

  # Prelude.Prelude.Int implementation of Prelude.Enum, method enumFromTo
  curry i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo/2
  def i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo( arg0, arg1 ) do
    aux2 =
      i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Int_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( arg0, arg1 )
    aux3 =
      case aux2 do
        :LT ->
          true
        _ ->
          aux4 =
            if ( arg0 == arg1 ) do
              true
            else
              false
            end
          aux4
      end
    aux1 =
      aux3
    aux5 =
      case aux1 do
        false ->
          i_Prelude_d_List_d_reverse_c__s_reverse_prime_( :idris_nothing, [], i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_( :idris_nothing, :idris_nothing, [], arg0 - arg1, arg0 ) )
        true ->
          i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_( :idris_nothing, :idris_nothing, [], arg1 - arg0, arg1 )
      end
    aux5
  end

  # Decidable.Equality.Decidable.Equality.Bool implementation of Decidable.Equality.DecEq, method decEq
  curry i_Decidable_d_Equality_d_Decidable_d_Equality_d_Bool_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq/2
  def i_Decidable_d_Equality_d_Decidable_d_Equality_d_Bool_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq( arg0, arg1 ) do
    aux1 =
      case arg1 do
        false ->
          aux2 =
            case arg0 do
              false ->
                :Yes
              true ->
                :No
            end
          aux2
        true ->
          aux3 =
            case arg0 do
              false ->
                :No
              true ->
                :Yes
            end
          aux3
      end
    aux1
  end

  # Prelude.Prelude.Integer implementation of Prelude.Enum, method enumFromTo, go'
  curry i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_/4
  def i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_( _arg0, _arg1, arg2, arg3 ) do
    aux1 =
      case arg3 do
        [ in4 | in5 ] ->
          [ arg2 + in4 | i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_( :idris_nothing, :idris_nothing, arg2, in5 ) ]
        [] ->
          arg3
      end
    aux1
  end

  # Prelude.Prelude.Int implementation of Prelude.Enum, method enumFromTo, go'
  curry i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_/5
  def i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_( _arg0, _arg1, arg2, arg3, arg4 ) do
    aux1 =
      case arg3 do
        0 ->
          [ arg4 | arg2 ]
        _ ->
          in5 =
            arg3 - 1
          i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo_c__s_go_prime_( :idris_nothing, :idris_nothing, [ arg4 | arg2 ], in5, arg4 - 1 )
      end
    aux1
  end

  # Prelude.List.reverse, reverse'
  curry i_Prelude_d_List_d_reverse_c__s_reverse_prime_/3
  def i_Prelude_d_List_d_reverse_c__s_reverse_prime_( _arg0, arg1, arg2 ) do
    aux1 =
      case arg2 do
        [ in3 | in4 ] ->
          i_Prelude_d_List_d_reverse_c__s_reverse_prime_( :idris_nothing, [ in3 | arg1 ], in4 )
        [] ->
          arg1
      end
    aux1
  end

  # Prelude.natRange, go
  curry i_Prelude_d_natRange_c__s_go/2
  def i_Prelude_d_natRange_c__s_go( _arg0, arg1 ) do
    aux1 =
      case arg1 do
        0 ->
          []
        _ ->
          in2 =
            arg1 - 1
          [ in2 | i_Prelude_d_natRange_c__s_go( :idris_nothing, in2 ) ]
      end
    aux1
  end

  # Prelude.Bool.||
  curry i_Prelude_d_Bool_d__124__124_/2
  def i_Prelude_d_Bool_d__124__124_( arg0, arg1 ) do
    aux1 =
      case arg0 do
        false ->
          Idrislib.LazyVal.force(arg1)
        true ->
          arg0
      end
    aux1
  end

  # world
  curry i_world/1
  def i_world( arg0 ) do
    arg0
  end

  # unsafePerformPrimIO
  def i_unsafePerformPrimIO(  ) do
    :idris_nothing
  end

  # Main.tester
  def i_Main_d_tester(  ) do
    {:Bind, :Self, i_Main_d__lc_tester_37_rc_()}
  end

  # Main.{tester_37}
  curry i_Main_d__lc_tester_37_rc_/1
  def i_Main_d__lc_tester_37_rc_( lift0 ) do
    {:Bind, {:Spawn, i_Main_d_loop( i_Prelude_d_Prelude_d_Int_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo( 1, 3 ) )}, i_Main_d__lc_tester_36_rc_().( lift0 )}
  end

  # Main.{tester_36}
  curry i_Main_d__lc_tester_36_rc_/2
  def i_Main_d__lc_tester_36_rc_( lift0, lift1 ) do
    {:Bind, i_Prelude_d_Traversable_d_Prelude_d_List_s_implementation_s_of_s_Prelude_d_Traversable_d_Traversable_c__s_method_s_traverse( :idris_nothing, :idris_nothing, :idris_nothing, {:"constructor_s_of_s_Prelude.Applicative.Applicative", i_Main_d__lc_tester_20_rc_(), i_Main_d__lc_tester_23_rc_()}, i_Main_d__lc_tester_24_rc_(), i_Prelude_d_Foldable_d_Prelude_d_List_d_List_s_implementation_s_of_s_Prelude_d_Foldable_d_Foldable_c__s_method_s_foldr( :idris_nothing, :idris_nothing, i_Main_d__lc_tester_25_rc_().( lift1 ).( lift0 ), [], i_Prelude_d_Foldable_d_Prelude_d_List_d_List_s_implementation_s_of_s_Prelude_d_Foldable_d_Foldable_c__s_method_s_foldr( :idris_nothing, :idris_nothing, i_Main_d__lc_tester_27_rc_(), [], [ "A" | [ "B" | [ "C" | [ "D" | [ "E" | [] ] ] ] ] ] ) ) ), i_Main_d__lc_tester_35_rc_()}
  end

  # Main.{tester_35}
  curry i_Main_d__lc_tester_35_rc_/1
  def i_Main_d__lc_tester_35_rc_( _lift0 ) do
    {:Bind, i_Prelude_d_Traversable_d_Prelude_d_List_s_implementation_s_of_s_Prelude_d_Traversable_d_Traversable_c__s_method_s_traverse( :idris_nothing, :idris_nothing, :idris_nothing, {:"constructor_s_of_s_Prelude.Applicative.Applicative", i_Main_d__lc_tester_20_rc_(), i_Main_d__lc_tester_23_rc_()}, i_Main_d__lc_tester_32_rc_(), i_Prelude_d_List_d_replicate( :idris_nothing, 50, :Recv ) ), i_Main_d__lc_tester_34_rc_()}
  end

  # Main.{tester_34}
  curry i_Main_d__lc_tester_34_rc_/1
  def i_Main_d__lc_tester_34_rc_( _lift0 ) do
    {:LiftIO, i_Main_d__lc_tester_33_rc_()}
  end

  # Main.{tester_33}
  curry i_Main_d__lc_tester_33_rc_/1
  def i_Main_d__lc_tester_33_rc_( _lift0 ) do
    in29 =
      IO.puts( "Done!\n" )
    {}
  end

  # Main.{tester_32}
  curry i_Main_d__lc_tester_32_rc_/1
  def i_Main_d__lc_tester_32_rc_( lift0 ) do
    lift0
  end

  # Main.{tester_27}
  curry i_Main_d__lc_tester_27_rc_/2
  def i_Main_d__lc_tester_27_rc_( lift0, lift1 ) do
    i_Prelude_d_List_d__plus__plus_( :idris_nothing, i_Prelude_d_Foldable_d_Prelude_d_List_d_List_s_implementation_s_of_s_Prelude_d_Foldable_d_Foldable_c__s_method_s_foldr( :idris_nothing, :idris_nothing, i_Main_d__lc_tester_26_rc_().( lift0 ), [], i_Prelude_d_Prelude_d_Integer_s_implementation_s_of_s_Prelude_d_Enum_c__s_method_s_enumFromTo( 1, 1 ) ), lift1 )
  end

  # Main.{tester_26}
  curry i_Main_d__lc_tester_26_rc_/3
  def i_Main_d__lc_tester_26_rc_( lift0, lift1, lift2 ) do
    aux2 =
      fn ( aux1 ) ->
        i_prim__toStrBigInt( aux1 )
      end
    i_Prelude_d_List_d__plus__plus_( :idris_nothing, [ lift0 <> i_Prelude_d_Show_d_primNumShow( :idris_nothing, aux2, :Open, lift1 ) | [] ], lift2 )
  end

  # Main.{tester_25}
  curry i_Main_d__lc_tester_25_rc_/4
  def i_Main_d__lc_tester_25_rc_( lift0, lift1, lift2, lift3 ) do
    i_Prelude_d_List_d__plus__plus_( :idris_nothing, [ i_Main_d_phone( lift2, lift0, lift1 ) | [] ], lift3 )
  end

  # Main.{tester_24}
  curry i_Main_d__lc_tester_24_rc_/1
  def i_Main_d__lc_tester_24_rc_( lift0 ) do
    {:Spawn, lift0}
  end

  # Main.{tester_23}
  curry i_Main_d__lc_tester_23_rc_/4
  def i_Main_d__lc_tester_23_rc_( _lift0, _lift1, lift2, lift3 ) do
    {:Bind, lift2, i_Main_d__lc_tester_22_rc_().( lift3 )}
  end

  # Main.{tester_22}
  curry i_Main_d__lc_tester_22_rc_/2
  def i_Main_d__lc_tester_22_rc_( lift0, lift1 ) do
    {:Bind, lift0, i_Main_d__lc_tester_21_rc_().( lift1 )}
  end

  # Main.{tester_21}
  curry i_Main_d__lc_tester_21_rc_/2
  def i_Main_d__lc_tester_21_rc_( lift0, lift1 ) do
    {:Pure, lift0.( lift1 )}
  end

  # Main.{tester_20}
  curry i_Main_d__lc_tester_20_rc_/2
  def i_Main_d__lc_tester_20_rc_( _lift0, lift1 ) do
    {:Pure, lift1}
  end

  # IO.spawnPtr
  curry i_IO_d_spawnPtr/2
  def i_IO_d_spawnPtr( arg0, _w1 ) do
    Idrislib.spawn_idris( arg0 )
  end

  # Elixir.SafeActors.spawn
  curry i_Elixir_d_SafeActors_d_spawn/3
  def i_Elixir_d_SafeActors_d_spawn( _arg0, _arg1, arg2 ) do
    {:Spawn, arg2}
  end

  # IO.sleep
  curry i_IO_d_sleep/2
  def i_IO_d_sleep( arg0, _w1 ) do
    :timer.sleep( arg0 )
  end

  # Prelude.Show.showParens
  curry i_Prelude_d_Show_d_showParens/2
  def i_Prelude_d_Show_d_showParens( arg0, arg1 ) do
    aux1 =
      case arg0 do
        false ->
          arg1
        true ->
          "(" <> arg1 <> ")"
      end
    aux1
  end

  # IO.sendPtr
  curry i_IO_d_sendPtr/3
  def i_IO_d_sendPtr( arg0, arg1, _w2 ) do
    send( arg0, arg1 )
  end

  # IO.selfPtr
  curry i_IO_d_selfPtr/1
  def i_IO_d_selfPtr( _w0 ) do
    self(  )
  end

  # run__IO
  curry i_run__IO/2
  def i_run__IO( _arg0, arg1 ) do
    arg1.( :idris_nothing )
  end

  # Elixir.SafeActors.runBeh
  curry i_Elixir_d_SafeActors_d_runBeh/3
  def i_Elixir_d_SafeActors_d_runBeh( _arg0, _arg1, arg2 ) do
    aux1 =
      case arg2 do
        {:Bind, in3, in4} ->
          i_Elixir_d_SafeActors_d__lc_runBeh_15_rc_().( in3 ).( in4 )
        {:LiftIO, in7} ->
          in7
        {:Pure, in8} ->
          i_Elixir_d_SafeActors_d__lc_runBeh_16_rc_().( in8 )
        :Recv ->
          i_Elixir_d_SafeActors_d__lc_runBeh_17_rc_()
        :Self ->
          i_Elixir_d_SafeActors_d__lc_runBeh_18_rc_()
        {:Send, in14, in15} ->
          i_IO_d_sendPtr().( in14 ).( in15 )
        {:Spawn, in16} ->
          i_Elixir_d_SafeActors_d__lc_runBeh_19_rc_().( in16 )
      end
    aux1
  end

  # Elixir.SafeActors.{runBeh_19}
  curry i_Elixir_d_SafeActors_d__lc_runBeh_19_rc_/2
  def i_Elixir_d_SafeActors_d__lc_runBeh_19_rc_( lift0, lift1 ) do
    in18 =
      i_IO_d_spawnPtr( i_Elixir_d_SafeActors_d_runBeh( :idris_nothing, :idris_nothing, lift0 ), lift1 )
    in18
  end

  # Elixir.SafeActors.{runBeh_18}
  curry i_Elixir_d_SafeActors_d__lc_runBeh_18_rc_/1
  def i_Elixir_d_SafeActors_d__lc_runBeh_18_rc_( lift0 ) do
    in13 =
      i_IO_d_selfPtr( lift0 )
    in13
  end

  # Elixir.SafeActors.{runBeh_17}
  curry i_Elixir_d_SafeActors_d__lc_runBeh_17_rc_/1
  def i_Elixir_d_SafeActors_d__lc_runBeh_17_rc_( lift0 ) do
    in11 =
      i_IO_d_receivePtr( lift0 )
    in11
  end

  # Elixir.SafeActors.{runBeh_16}
  curry i_Elixir_d_SafeActors_d__lc_runBeh_16_rc_/2
  def i_Elixir_d_SafeActors_d__lc_runBeh_16_rc_( lift0, _lift1 ) do
    lift0
  end

  # Elixir.SafeActors.{runBeh_15}
  curry i_Elixir_d_SafeActors_d__lc_runBeh_15_rc_/3
  def i_Elixir_d_SafeActors_d__lc_runBeh_15_rc_( lift0, lift1, lift2 ) do
    aux1 =
      i_Elixir_d_SafeActors_d_runBeh( :idris_nothing, :idris_nothing, lift0 )
    in6 =
      aux1.( lift2 )
    aux2 =
      i_Elixir_d_SafeActors_d_runBeh( :idris_nothing, :idris_nothing, lift1.( in6 ) )
    aux2.( lift2 )
  end

  # Prelude.List.replicate
  curry i_Prelude_d_List_d_replicate/3
  def i_Prelude_d_List_d_replicate( _arg0, arg1, arg2 ) do
    aux1 =
      case arg1 do
        0 ->
          []
        _ ->
          in3 =
            arg1 - 1
          [ arg2 | i_Prelude_d_List_d_replicate( :idris_nothing, in3, arg2 ) ]
      end
    aux1
  end

  # IO.receivePtr
  curry i_IO_d_receivePtr/1
  def i_IO_d_receivePtr( _w0 ) do
    Idrislib.receive_any(  )
  end

  # Prelude.Applicative.pure
  curry i_Prelude_d_Applicative_d_pure/3
  def i_Prelude_d_Applicative_d_pure( _arg0, arg1, arg2 ) do
    aux1 =
      case arg1 do
        {:"constructor_s_of_s_Prelude.Applicative.Applicative", in3, _in4} ->
          in3.( arg2 )
      end
    aux1
  end

  # prim_io_bind
  curry i_prim_io_bind/4
  def i_prim_io_bind( _arg0, _arg1, arg2, arg3 ) do
    arg3.( arg2 )
  end

  # prim__writeString
  curry i_prim__writeString/2
  def i_prim__writeString( _arg0, arg1 ) do
    IO.puts( arg1 )
  end

  # prim__writeFile
  curry i_prim__writeFile/3
  def i_prim__writeFile( arg0, arg1, arg2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__writeFile" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) <> Kernel.inspect(arg2) )
  end

  # prim__vm
  curry i_prim__vm/1
  def i_prim__vm( arg0 ) do
    arg0
  end

  # prim__toStrInt
  curry i_prim__toStrInt/1
  def i_prim__toStrInt( arg0 ) do
    to_string( arg0 )
  end

  # prim__toStrBigInt
  curry i_prim__toStrBigInt/1
  def i_prim__toStrBigInt( arg0 ) do
    to_string( arg0 )
  end

  # prim__subInt
  curry i_prim__subInt/2
  def i_prim__subInt( arg0, arg1 ) do
    arg0 - arg1
  end

  # prim__subBigInt
  curry i_prim__subBigInt/2
  def i_prim__subBigInt( arg0, arg1 ) do
    arg0 - arg1
  end

  # prim__strHead
  curry i_prim__strHead/1
  def i_prim__strHead( arg0 ) do
    String.first(arg0)
  end

  # prim__stdout
  def i_prim__stdout(  ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__stdout")
  end

  # prim__stdin
  def i_prim__stdin(  ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__stdin")
  end

  # prim__stderr
  def i_prim__stderr(  ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__stderr")
  end

  # prim__sltInt
  curry i_prim__sltInt/2
  def i_prim__sltInt( arg0, arg1 ) do
    arg0 < arg1
  end

  # prim__sltBigInt
  curry i_prim__sltBigInt/2
  def i_prim__sltBigInt( arg0, arg1 ) do
    arg0 < arg1
  end

  # prim__sizeofPtr
  def i_prim__sizeofPtr(  ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__sizeofPtr")
  end

  # prim__sextInt_BigInt
  curry i_prim__sextInt_BigInt/1
  def i_prim__sextInt_BigInt( arg0 ) do
    arg0
  end

  # prim__registerPtr
  curry i_prim__registerPtr/2
  def i_prim__registerPtr( arg0, arg1 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__registerPtr" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) )
  end

  # prim__readFile
  curry i_prim__readFile/2
  def i_prim__readFile( arg0, arg1 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__readFile" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) )
  end

  # prim__readChars
  curry i_prim__readChars/3
  def i_prim__readChars( arg0, arg1, arg2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__readChars" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) <> Kernel.inspect(arg2) )
  end

  # prim__ptrOffset
  curry i_prim__ptrOffset/2
  def i_prim__ptrOffset( arg0, arg1 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__ptrOffset" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) )
  end

  # prim__pokeSingle
  curry i_prim__pokeSingle/4
  def i_prim__pokeSingle( arg0, arg1, arg2, arg3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__pokeSingle" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) <> Kernel.inspect(arg2) <> Kernel.inspect(arg3) )
  end

  # prim__pokePtr
  curry i_prim__pokePtr/4
  def i_prim__pokePtr( arg0, arg1, arg2, arg3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__pokePtr" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) <> Kernel.inspect(arg2) <> Kernel.inspect(arg3) )
  end

  # prim__pokeDouble
  curry i_prim__pokeDouble/4
  def i_prim__pokeDouble( arg0, arg1, arg2, arg3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__pokeDouble" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) <> Kernel.inspect(arg2) <> Kernel.inspect(arg3) )
  end

  # prim__poke8
  curry i_prim__poke8/4
  def i_prim__poke8( arg0, arg1, arg2, arg3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__poke8" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) <> Kernel.inspect(arg2) <> Kernel.inspect(arg3) )
  end

  # prim__poke64
  curry i_prim__poke64/4
  def i_prim__poke64( arg0, arg1, arg2, arg3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__poke64" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) <> Kernel.inspect(arg2) <> Kernel.inspect(arg3) )
  end

  # prim__poke32
  curry i_prim__poke32/4
  def i_prim__poke32( arg0, arg1, arg2, arg3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__poke32" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) <> Kernel.inspect(arg2) <> Kernel.inspect(arg3) )
  end

  # prim__poke16
  curry i_prim__poke16/4
  def i_prim__poke16( arg0, arg1, arg2, arg3 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__poke16" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) <> Kernel.inspect(arg2) <> Kernel.inspect(arg3) )
  end

  # prim__peekSingle
  curry i_prim__peekSingle/3
  def i_prim__peekSingle( arg0, arg1, arg2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peekSingle" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) <> Kernel.inspect(arg2) )
  end

  # prim__peekPtr
  curry i_prim__peekPtr/3
  def i_prim__peekPtr( arg0, arg1, arg2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peekPtr" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) <> Kernel.inspect(arg2) )
  end

  # prim__peekDouble
  curry i_prim__peekDouble/3
  def i_prim__peekDouble( arg0, arg1, arg2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peekDouble" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) <> Kernel.inspect(arg2) )
  end

  # prim__peek8
  curry i_prim__peek8/3
  def i_prim__peek8( arg0, arg1, arg2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peek8" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) <> Kernel.inspect(arg2) )
  end

  # prim__peek64
  curry i_prim__peek64/3
  def i_prim__peek64( arg0, arg1, arg2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peek64" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) <> Kernel.inspect(arg2) )
  end

  # prim__peek32
  curry i_prim__peek32/3
  def i_prim__peek32( arg0, arg1, arg2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peek32" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) <> Kernel.inspect(arg2) )
  end

  # prim__peek16
  curry i_prim__peek16/3
  def i_prim__peek16( arg0, arg1, arg2 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__peek16" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) <> Kernel.inspect(arg2) )
  end

  # prim__null
  def i_prim__null(  ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__null")
  end

  # prim__eqString
  curry i_prim__eqString/2
  def i_prim__eqString( arg0, arg1 ) do
    arg0 == arg1
  end

  # prim__eqPtr
  curry i_prim__eqPtr/2
  def i_prim__eqPtr( arg0, arg1 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__eqPtr" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) )
  end

  # prim__eqManagedPtr
  curry i_prim__eqManagedPtr/2
  def i_prim__eqManagedPtr( arg0, arg1 ) do
    raise("UNIM PRIM OP NOT IMPLEMENTED: LExternal prim__eqManagedPtr" <> Kernel.inspect(arg0) <> Kernel.inspect(arg1) )
  end

  # prim__eqInt
  curry i_prim__eqInt/2
  def i_prim__eqInt( arg0, arg1 ) do
    arg0 == arg1
  end

  # prim__eqChar
  curry i_prim__eqChar/2
  def i_prim__eqChar( arg0, arg1 ) do
    arg0 == arg1
  end

  # prim__eqBigInt
  curry i_prim__eqBigInt/2
  def i_prim__eqBigInt( arg0, arg1 ) do
    arg0 == arg1
  end

  # prim__concat
  curry i_prim__concat/2
  def i_prim__concat( arg0, arg1 ) do
    arg0 <> arg1
  end

  # prim__asPtr
  curry i_prim__asPtr/1
  def i_prim__asPtr( arg0 ) do
    arg0
  end

  # prim__addBigInt
  curry i_prim__addBigInt/2
  def i_prim__addBigInt( arg0, arg1 ) do
    arg0 + arg1
  end

  # Prelude.Show.primNumShow
  curry i_Prelude_d_Show_d_primNumShow/4
  def i_Prelude_d_Show_d_primNumShow( _arg0, arg1, arg2, arg3 ) do
    in4 =
      arg1.( arg3 )
    aux4 =
      case arg2 do
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
        :User ->
          4
      end
    aux3 =
      i_Prelude_d_Interfaces_d_Prelude_d_Interfaces_d_Integer_s_implementation_s_of_s_Prelude_d_Interfaces_d_Ord_c__s_method_s_compare( aux4, 5 )
    aux5 =
      case aux3 do
        :GT ->
          true
        _ ->
          aux7 =
            case arg2 do
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
              :User ->
                4
            end
          aux6 =
            if ( aux7 == 5 ) do
              true
            else
              false
            end
          aux6
      end
    aux2 =
      aux5
    aux8 =
      case aux2 do
        false ->
          false
        true ->
          aux10 =
            if ( in4 == "" ) do
              false
            else
              true
            end
          aux9 =
            i_Decidable_d_Equality_d_Decidable_d_Equality_d_Bool_s_implementation_s_of_s_Decidable_d_Equality_d_DecEq_c__s_method_s_decEq( aux10, true )
          aux11 =
            case aux9 do
              :No ->
                false
              :Yes ->
                aux12 =
                  if ( String.first(in4) == '-' ) do
                    true
                  else
                    false
                  end
                aux12
            end
          aux11
      end
    aux1 =
      aux8
    aux13 =
      case aux1 do
        false ->
          in4
        true ->
          "(" <> in4 <> ")"
      end
    aux13
  end

  # Prelude.Show.precCon
  curry i_Prelude_d_Show_d_precCon/1
  def i_Prelude_d_Show_d_precCon( arg0 ) do
    aux1 =
      case arg0 do
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
        :User ->
          4
      end
    aux1
  end

  # Main.phone
  curry i_Main_d_phone/3
  def i_Main_d_phone( arg0, arg1, arg2 ) do
    {:Bind, :Self, i_Main_d__lc_phone_14_rc_().( arg1 ).( arg0 ).( arg2 )}
  end

  # Main.{phone_14}
  curry i_Main_d__lc_phone_14_rc_/4
  def i_Main_d__lc_phone_14_rc_( lift0, lift1, lift2, lift3 ) do
    {:Bind, {:Send, lift0, {:GetFreq, lift3}}, i_Main_d__lc_phone_13_rc_().( lift1 ).( lift0 ).( lift2 )}
  end

  # Main.{phone_13}
  curry i_Main_d__lc_phone_13_rc_/4
  def i_Main_d__lc_phone_13_rc_( lift0, lift1, lift2, _lift3 ) do
    {:Bind, :Recv, i_Main_d__lc_phone_12_rc_().( lift0 ).( lift1 ).( lift2 )}
  end

  # Main.{phone_12}
  curry i_Main_d__lc_phone_12_rc_/4
  def i_Main_d__lc_phone_12_rc_( lift0, lift1, lift2, lift3 ) do
    aux1 =
      case lift3 do
        {:Freq, in6} ->
          {:Bind, {:LiftIO, i_Main_d__lc_phone_3_rc_().( lift0 ).( in6 )}, i_Main_d__lc_phone_8_rc_().( lift1 ).( in6 ).( lift0 ).( lift2 )}
        _ ->
          {:Bind, {:LiftIO, i_Main_d__lc_phone_9_rc_().( lift0 )}, i_Main_d__lc_phone_11_rc_().( lift0 ).( lift1 ).( lift2 )}
      end
    aux1
  end

  # Main.{phone_11}
  curry i_Main_d__lc_phone_11_rc_/4
  def i_Main_d__lc_phone_11_rc_( lift0, lift1, lift2, _lift3 ) do
    {:Bind, {:LiftIO, i_IO_d_sleep().( 1000 )}, i_Main_d__lc_phone_10_rc_().( lift0 ).( lift1 ).( lift2 )}
  end

  # Main.{phone_10}
  curry i_Main_d__lc_phone_10_rc_/4
  def i_Main_d__lc_phone_10_rc_( lift0, lift1, lift2, _lift3 ) do
    i_Main_d_phone( lift0, lift1, lift2 )
  end

  # Main.{phone_9}
  curry i_Main_d__lc_phone_9_rc_/2
  def i_Main_d__lc_phone_9_rc_( lift0, _lift1 ) do
    in16 =
      IO.puts( "phone " <> lift0 <> " couldn't get frequency!" <> "\n" )
    {}
  end

  # Main.{phone_8}
  curry i_Main_d__lc_phone_8_rc_/5
  def i_Main_d__lc_phone_8_rc_( lift0, lift1, lift2, lift3, _lift4 ) do
    {:Bind, {:LiftIO, i_IO_d_sleep().( 1500 )}, i_Main_d__lc_phone_7_rc_().( lift0 ).( lift1 ).( lift2 ).( lift3 )}
  end

  # Main.{phone_7}
  curry i_Main_d__lc_phone_7_rc_/5
  def i_Main_d__lc_phone_7_rc_( lift0, lift1, lift2, lift3, _lift4 ) do
    {:Bind, {:Send, lift0, {:RetFreq, lift1}}, i_Main_d__lc_phone_6_rc_().( lift2 ).( lift3 )}
  end

  # Main.{phone_6}
  curry i_Main_d__lc_phone_6_rc_/3
  def i_Main_d__lc_phone_6_rc_( lift0, lift1, _lift2 ) do
    {:Bind, {:LiftIO, i_Main_d__lc_phone_4_rc_().( lift0 )}, i_Main_d__lc_phone_5_rc_().( lift1 )}
  end

  # Main.{phone_5}
  curry i_Main_d__lc_phone_5_rc_/2
  def i_Main_d__lc_phone_5_rc_( lift0, _lift1 ) do
    {:Send, lift0, {}}
  end

  # Main.{phone_4}
  curry i_Main_d__lc_phone_4_rc_/2
  def i_Main_d__lc_phone_4_rc_( lift0, _lift1 ) do
    in13 =
      IO.puts( "phone " <> lift0 <> " has finished calling." <> "\n" )
    {}
  end

  # Main.{phone_3}
  curry i_Main_d__lc_phone_3_rc_/3
  def i_Main_d__lc_phone_3_rc_( lift0, lift1, _lift2 ) do
    aux2 =
      fn ( aux1 ) ->
        i_prim__toStrInt( aux1 )
      end
    in8 =
      IO.puts( "phone " <> lift0 <> " got a frequency: " <> i_Prelude_d_Show_d_primNumShow( :idris_nothing, aux2, :Open, lift1 ) <> "\n" )
    {}
  end

  # Prelude.Bool.not
  curry i_Prelude_d_Bool_d_not/1
  def i_Prelude_d_Bool_d_not( arg0 ) do
    aux1 =
      case arg0 do
        false ->
          true
        true ->
          false
      end
    aux1
  end

  # mkForeignPrim
  def i_mkForeignPrim(  ) do
    :idris_nothing
  end

  # Main.main
  def i_Main_d_main(  ) do
    aux1 =
      i_Main_d_tester(  )
    i_Elixir_d_SafeActors_d_runBeh( :idris_nothing, :idris_nothing, aux1 )
  end

  # Main.loop
  curry i_Main_d_loop/1
  def i_Main_d_loop( arg0 ) do
    {:Bind, :Recv, i_Main_d__lc_loop_2_rc_().( arg0 )}
  end

  # Main.{loop_2}
  curry i_Main_d__lc_loop_2_rc_/2
  def i_Main_d__lc_loop_2_rc_( lift0, lift1 ) do
    aux1 =
      case lift1 do
        {:GetFreq, in2} ->
          aux2 =
            case lift0 do
              [ in3 | in4 ] ->
                {:Bind, {:Send, in2, {:Freq, in3}}, i_Main_d__lc_loop_0_rc_().( in4 )}
              [] ->
                {:Bind, {:Send, in2, :NoneFree}, i_Main_d__lc_loop_1_rc_()}
            end
          aux2
        {:RetFreq, in7} ->
          i_Main_d_loop( [ in7 | lift0 ] )
      end
    aux1
  end

  # Main.{loop_1}
  curry i_Main_d__lc_loop_1_rc_/1
  def i_Main_d__lc_loop_1_rc_( _lift0 ) do
    i_Main_d_loop( [] )
  end

  # Main.{loop_0}
  curry i_Main_d__lc_loop_0_rc_/2
  def i_Main_d__lc_loop_0_rc_( lift0, _lift1 ) do
    i_Main_d_loop( lift0 )
  end

  # io_pure
  curry i_io_pure/4
  def i_io_pure( _arg0, _arg1, arg2, _w3 ) do
    arg2
  end

  # io_bind
  curry i_io_bind/6
  def i_io_bind( _arg0, _arg1, _arg2, arg3, k4, w5 ) do
    k4.( arg3.( w5 ) ).( w5 )
  end

  # Prelude.Interfaces.intToBool
  curry i_Prelude_d_Interfaces_d_intToBool/1
  def i_Prelude_d_Interfaces_d_intToBool( arg0 ) do
    aux1 =
      case arg0 do
        0 ->
          false
        _ ->
          true
      end
    aux1
  end

  # Prelude.Bool.ifThenElse
  curry i_Prelude_d_Bool_d_ifThenElse/4
  def i_Prelude_d_Bool_d_ifThenElse( _arg0, arg1, arg2, arg3 ) do
    aux1 =
      case arg1 do
        false ->
          Idrislib.LazyVal.force(arg3)
        true ->
          Idrislib.LazyVal.force(arg2)
      end
    aux1
  end

  # idris_crash
  def i_idris_crash(  ) do
    :idris_nothing
  end

  # Prelude.Basics.id
  curry i_Prelude_d_Basics_d_id/2
  def i_Prelude_d_Basics_d_id( _arg0, arg1 ) do
    arg1
  end

  # call__IO
  curry i_call__IO/3
  def i_call__IO( _arg0, _arg1, arg2 ) do
    arg2.( :idris_nothing )
  end

  # assert_unreachable
  def i_assert_unreachable(  ) do
    :idris_nothing
  end

  # Force
  curry i_Force/3
  def i_Force( _arg0, _arg1, arg2 ) do
    Idrislib.LazyVal.force(arg2)
  end

  # Prelude.Applicative.<*>
  curry i_Prelude_d_Applicative_d__lt__42__gt_/4
  def i_Prelude_d_Applicative_d__lt__42__gt_( _arg0, arg1, arg2, arg3 ) do
    aux1 =
      case arg1 do
        {:"constructor_s_of_s_Prelude.Applicative.Applicative", _in4, in5} ->
          in5.( arg2 ).( arg3 )
      end
    aux1
  end

  # Prelude.List.++
  curry i_Prelude_d_List_d__plus__plus_/3
  def i_Prelude_d_List_d__plus__plus_( _arg0, arg1, arg2 ) do
    aux1 =
      case arg1 do
        [ in3 | in4 ] ->
          [ in3 | i_Prelude_d_List_d__plus__plus_( :idris_nothing, in4, arg2 ) ]
        [] ->
          arg2
      end
    aux1
  end

  # Prelude.Bool.&&
  curry i_Prelude_d_Bool_d__and__and_/2
  def i_Prelude_d_Bool_d__and__and_( arg0, arg1 ) do
    aux1 =
      case arg0 do
        false ->
          arg0
        true ->
          Idrislib.LazyVal.force(arg1)
      end
    aux1
  end
end
