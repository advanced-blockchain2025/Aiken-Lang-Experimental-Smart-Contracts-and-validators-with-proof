  Compiling aiken-lang/stdlib main (.)
    Resolving aiken-lang/stdlib
      Fetched 1 package in 0.01s from cache
    Compiling aiken-lang/fuzz v2 (./build/packages/aiken-lang-fuzz)
    Compiling aiken-lang/stdlib v2 (./build/packages/aiken-lang-stdlib)
      Testing ...

    ┍━ aiken/cbor.test ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    │ PASS [mem:   19791, cpu:    4829370] diagnostic_1
    │ PASS [mem:   30433, cpu:    7889164] diagnostic_2
    │ PASS [mem:   54189, cpu:   13768722] diagnostic_3
    │ PASS [mem:   10305, cpu:    2084894] diagnostic_4
    │ PASS [mem:   40049, cpu:    9926379] diagnostic_5
    │ PASS [mem:   59920, cpu:   15452542] diagnostic_6
    │ PASS [mem:   55610, cpu:   14076139] diagnostic_7
    │ PASS [mem:   41685, cpu:   10801502] diagnostic_7_alt
    │ PASS [mem:   50445, cpu:   13697479] diagnostic_8
    │ PASS [mem:   31127, cpu:    8486707] diagnostic_9
    │ PASS [mem:   10305, cpu:    2084894] diagnostic_10
    │ PASS [mem:   10305, cpu:    2083584] diagnostic_10_alt
    │ PASS [mem:   61784, cpu:   17355340] diagnostic_11
    │ PASS [mem:   81107, cpu:   22566997] diagnostic_12
    │ PASS [mem:   70319, cpu:   19224176] diagnostic_13
    │ PASS [mem:   21703, cpu:    4735670] diagnostic_14
    │ PASS [mem:   23599, cpu:    5850239] diagnostic_15
    │ PASS [mem:   53790, cpu:   13440629] diagnostic_16
    │ PASS [mem:     811, cpu:    2163702] serialise_1
    │ PASS [mem:     811, cpu:    2163702] serialise_2
    │ PASS [mem:     809, cpu:    1950390] serialise_3
    │ PASS [mem:     829, cpu:    4083510] serialise_4
    │ PASS [mem:     839, cpu:    5150070] serialise_5
    │ PASS [mem:     837, cpu:    4936758] serialise_6
    │ PASS [mem:     819, cpu:    3016950] serialise_7
    │ PASS [mem:     809, cpu:    1950390] serialise_8
    │ PASS [mem:     829, cpu:    4083510] serialise_9
    │ PASS [mem:    9978, cpu:    2013447] unit_deserialise_not_enough_bytes_1
    │ PASS [mem:   48586, cpu:   11474218] unit_deserialise_not_enough_bytes_2
    │ PASS [mem:   50073, cpu:   11777611] unit_deserialise_non_empty_leftovers
    │ PASS [mem:   24216, cpu:    5795142] unit_deserialise_invalid_header
    │ PASS [mem:   26418, cpu:    6261438] unit_deserialise_invalid_uint
    │ PASS [mem: 4487227, cpu: 1127565480] bench_deserialise_script_context
    │ PASS [after 100 tests] prop_deserialise_any_data
    │ · with coverage
    │ | (binary) Constr  20.0%
    │ | Pairs            19.0%
    │ | (unary) Constr   18.0%
    │ | ByteArray        15.0%
    │ | Int              15.0%
    │ | List             13.0%
    ┕━━━━━━━━━━━━━━━━━ with --seed=1946501958 → 34 tests | 34 passed | 0 failed

    ┍━ aiken/collection/dict ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    │ PASS [mem:  141595, cpu:   43644498] bench_from_ascending_pairs
    │ PASS [mem:    5665, cpu:    2088604] from_list_1
    │ PASS [mem:   48115, cpu:   14285665] from_list_2
    │ PASS [mem:   27589, cpu:    8637789] from_list_3
    │ PASS [mem:   43463, cpu:   13214754] from_list_4
    │ PASS [mem:  660659, cpu:  183158093] bench_from_pairs
    │ PASS [mem:    5433, cpu:    1988358] find_1
    │ PASS [mem:   12619, cpu:    4153319] find_2
    │ PASS [mem:   12955, cpu:    4108222] find_3
    │ PASS [mem:   42473, cpu:   12110624] find_4
    │ PASS [mem:    5433, cpu:    1988358] get_1
    │ PASS [mem:   28765, cpu:    8297882] get_2
    │ PASS [mem:   27669, cpu:    7895791] get_3
    │ PASS [mem:  409801, cpu:  110564084] get_4
    │ PASS [mem:  446613, cpu:  121313193] get_5
    │ PASS [mem:    4733, cpu:     945143] has_key_1
    │ PASS [mem:   10759, cpu:    2475504] has_key_2
    │ PASS [mem:   11360, cpu:    2647553] has_key_3
    │ PASS [mem:   20177, cpu:    4780078] has_key_4
    │ PASS [mem:    1232, cpu:     309094] is_empty_1
    │ PASS [mem:    4765, cpu:    1910210] keys_1
    │ PASS [mem:   22799, cpu:    7040604] keys_2
    │ PASS [mem:    3233, cpu:     681427] size_1
    │ PASS [mem:   10095, cpu:    2286194] size_2
    │ PASS [mem:   21579, cpu:    5226633] size_3
    │ PASS [mem:    4765, cpu:    1910210] values_1
    │ PASS [mem:   22799, cpu:    7040798] values_2
    │ PASS [mem:    5665, cpu:    2088604] delete_1
    │ PASS [mem:   13257, cpu:    4173799] delete_2
    │ PASS [mem:   13789, cpu:    4594835] delete_3
    │ PASS [mem:   35091, cpu:    8918964] delete_4
    │ PASS [mem:   26905, cpu:    6653365] delete_5
    │ PASS [mem:  413221, cpu:  114400532] delete_6
    │ PASS [mem:    5665, cpu:    2088604] filter_1
    │ PASS [mem:   20273, cpu:    6468770] filter_2
    │ PASS [mem:   20273, cpu:    6437262] filter_3
    │ PASS [mem:   21341, cpu:    6127091] insert_1
    │ PASS [mem:   31855, cpu:    9081357] insert_2
    │ PASS [mem:   16847, cpu:    5294666] insert_with_1
    │ PASS [mem:   38687, cpu:   11266336] insert_with_2
    │ PASS [mem:   51483, cpu:   14231660] insert_with_3
    │ PASS [mem:   28587, cpu:    8751942] map_1
    │ PASS [mem:   41093, cpu:   12531090] map_2
    │ PASS [mem:    7661, cpu:    2789412] pop_1
    │ PASS [mem:   16349, cpu:    5280814] pop_2
    │ PASS [mem:   16881, cpu:    5634219] pop_3
    │ PASS [mem:   38509, cpu:   11122476] pop_4
    │ PASS [mem:  418113, cpu:  115727916] pop_6
    │ PASS [mem:   27889, cpu:    8685789] union_1
    │ PASS [mem:    5965, cpu:    2682184] union_2
    │ PASS [mem:   98281, cpu:   27108284] union_3
    │ PASS [mem:   72925, cpu:   19982792] union_4
    │ PASS [mem:   76553, cpu:   21267108] union_with_1
    │ PASS [mem:    4933, cpu:     953427] fold_1
    │ PASS [mem:   13185, cpu:    3649003] fold_2
    │ PASS [mem:    4633, cpu:     905427] foldr_1
    │ PASS [mem:   12285, cpu:    3505003] foldr_2
    │ PASS [mem:     200, cpu:      16100] to_list_1
    │ PASS [mem:     200, cpu:      16100] to_list_2
    ┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 59 tests | 59 passed | 0 failed

    ┍━ aiken/collection/list ━━━━━━━━━━━━━━━━━━━━
    │ PASS [mem:    1365, cpu:    1441973] push_1
    │ PASS [mem:    1365, cpu:    1714763] push_2
    │ PASS [mem:   15207, cpu:    5316967] range_1
    │ PASS [mem:   12339, cpu:    4422364] range_2
    │ PASS [mem:    3735, cpu:    1737102] repeat_1
    │ PASS [mem:   11643, cpu:    4274655] repeat_2
    │ PASS [mem:   15323, cpu:    3896813] all_1
    │ PASS [mem:    7232, cpu:    1712088] all_2
    │ PASS [mem:    4433, cpu:     897143] all_3
    │ PASS [mem:    6631, cpu:    1540039] any_1
    │ PASS [mem:   15924, cpu:    4068862] any_2
    │ PASS [mem:    5034, cpu:    1069192] any_3
    │ PASS [mem:   18629, cpu:    5680781] at_1
    │ PASS [mem:    4733, cpu:    1876358] at_2
    │ PASS [mem:   18629, cpu:    5680781] at_3
    │ PASS [mem:    8327, cpu:    2980504] at_4
    │ PASS [mem:   17591, cpu:    5516786] at_5
    │ PASS [mem:    4033, cpu:     809427] count_empty
    │ PASS [mem:   17029, cpu:    4448721] count_all
    │ PASS [mem:   16627, cpu:    4279154] count_some
    │ PASS [mem:   15823, cpu:    3953097] count_none
    │ PASS [mem:    8027, cpu:    2932504] find_1
    │ PASS [mem:   16223, cpu:    4972028] find_2
    │ PASS [mem:    4433, cpu:    1828358] find_3
    │ PASS [mem:    6631, cpu:    1547082] has_1
    │ PASS [mem:   15924, cpu:    4089991] has_2
    │ PASS [mem:    5034, cpu:    1069192] has_3
    │ PASS [mem:    3529, cpu:    1982416] head_1
    │ PASS [mem:    2433, cpu:    1508358] head_2
    │ PASS [mem:    2433, cpu:     577143] is_empty_1
    │ PASS [mem:    3034, cpu:     749192] is_empty_2
    │ PASS [mem:   16691, cpu:    5372786] index_of_1
    │ PASS [mem:   17729, cpu:    5536781] index_of_2
    │ PASS [mem:   21023, cpu:    6592927] index_of_3
    │ PASS [mem:    4733, cpu:    1876358] index_of_4
    │ PASS [mem:    4033, cpu:    1764358] last_1
    │ PASS [mem:    6193, cpu:    2613073] last_2
    │ PASS [mem:   14377, cpu:    5149015] last_3
    │ PASS [mem:    3233, cpu:     681427] length_1
    │ PASS [mem:    9431, cpu:    2589022] length_2
    │ PASS [mem:    4665, cpu:    1894210] delete_1
    │ PASS [mem:    7163, cpu:    3001334] delete_2
    │ PASS [mem:   18447, cpu:    6019177] delete_3
    │ PASS [mem:    7163, cpu:    2592149] delete_4
    │ PASS [mem:    5367, cpu:    2126096] drop_1
    │ PASS [mem:   11671, cpu:    3992999] drop_2
    │ PASS [mem:    4265, cpu:    1830210] drop_while_1
    │ PASS [mem:   24613, cpu:    8154531] drop_while_2
    │ PASS [mem:    6463, cpu:    3844099] drop_while_3
    │ PASS [mem:   40565, cpu:   11829110] drop_while_4
    │ PASS [mem:    4665, cpu:    1894210] filter_1
    │ PASS [mem:   32643, cpu:   10359556] filter_2
    │ PASS [mem:   40977, cpu:   12245962] filter_3
    │ PASS [mem:    5665, cpu:    2054210] filter_map_1
    │ PASS [mem:   54931, cpu:   17314628] filter_map_2
    │ PASS [mem:    4433, cpu:    1828358] init_1
    │ PASS [mem:    7725, cpu:    2909490] init_2
    │ PASS [mem:   17901, cpu:    6609153] init_3
    │ PASS [mem:    4665, cpu:    2112442] partition_1
    │ PASS [mem:   81485, cpu:   25394472] partition_2
    │ PASS [mem:   82581, cpu:   25803478] partition_3
    │ PASS [mem:   82581, cpu:   25733048] partition_4
    │ PASS [mem:   36997, cpu:   12237146] partition_5
    │ PASS [mem:   27731, cpu:    8551907] slice_1
    │ PASS [mem:   34867, cpu:   10543409] slice_2
    │ PASS [mem:   54225, cpu:   16584303] slice_3
    │ PASS [mem:   53259, cpu:   16819231] slice_4
    │ PASS [mem:   47989, cpu:   14736801] slice_5
    │ PASS [mem:   43665, cpu:   12846440] slice_6
    │ PASS [mem:    4965, cpu:    2160442] span_1
    │ PASS [mem:   23799, cpu:    8061202] span_2
    │ PASS [mem:    8559, cpu:    3597646] span_3
    │ PASS [mem:   27825, cpu:    9264961] span_4
    │ PASS [mem:    3761, cpu:    2292292] tail_1
    │ PASS [mem:    2433, cpu:    1508358] tail_2
    │ PASS [mem:    6167, cpu:    2254096] take_1
    │ PASS [mem:   13799, cpu:    4760418] take_2
    │ PASS [mem:    4665, cpu:    1894210] take_while_1
    │ PASS [mem:   30133, cpu:    9424836] take_while_2
    │ PASS [mem:    7163, cpu:    2592149] take_while_3
    │ PASS [mem:   50605, cpu:   15573670] take_while_4
    │ PASS [mem:    4665, cpu:    1894210] unique_1
    │ PASS [mem:  415774, cpu:  114512924] unique_2
    │ PASS [mem:    4265, cpu:    1830210] flat_map_1
    │ PASS [mem:   35597, cpu:   11502195] flat_map_2
    │ PASS [mem:   10764, cpu:    2719904] for_each_1
    │ · with traces
    │ | world
    │ | hello
    │ PASS [mem:    4565, cpu:    1878210] indexed_map_1
    │ PASS [mem:   24949, cpu:    8102998] indexed_map_2
    │ PASS [mem:    4265, cpu:    1830210] map_1
    │ PASS [mem:   17041, cpu:    6325470] map_2
    │ PASS [mem:    4565, cpu:    1878210] map2_1
    │ PASS [mem:   17937, cpu:    6137493] map2_2
    │ PASS [mem:   10185, cpu:    3754954] map2_3
    │ PASS [mem:    4865, cpu:    1926210] map3_1
    │ PASS [mem:   23897, cpu:    7889011] map3_2
    │ PASS [mem:    4565, cpu:    1878210] reverse_1
    │ PASS [mem:   12449, cpu:    4597902] reverse_2
    │ PASS [mem:  284747, cpu:  112039570] sort_1
    │ PASS [mem:   89205, cpu:   34186101] sort_2
    │ PASS [mem:  370815, cpu:  143399355] sort_3
    │ PASS [mem:    4665, cpu:    1894210] sort_4
    │ PASS [mem:    4265, cpu:    2048442] unzip_1
    │ PASS [mem:   17817, cpu:    7035390] unzip_2
    │ PASS [mem:   11249, cpu:    4815087] concat_1
    │ PASS [mem:   11249, cpu:    4405902] concat_2
    │ PASS [mem:    4265, cpu:    2239395] concat_3
    │ PASS [mem:   44215, cpu:   12499765] difference_1
    │ PASS [mem:   41717, cpu:   12120284] difference_2
    │ PASS [mem:    4965, cpu:    2351395] difference_3
    │ PASS [mem:   18345, cpu:    5360845] difference_4
    │ PASS [mem:    4565, cpu:    1878210] zip_1
    │ PASS [mem:    6693, cpu:    2516761] zip_2
    │ PASS [mem:   16733, cpu:    6231212] zip_3
    │ PASS [mem:   47455, cpu:   12883479] foldl2_optimized
    │ PASS [mem:   64595, cpu:   20076660] foldl2_classic
    │ PASS [mem:   58323, cpu:   18244044] foldl2_pair
    │ PASS [mem:   77519, cpu:   24034550] foldl2_foo
    │ PASS [mem:    3933, cpu:     793427] foldl_1
    │ PASS [mem:   18083, cpu:    5052222] foldl_2
    │ PASS [mem:   15077, cpu:    5504466] foldl_3
    │ PASS [mem:   16283, cpu:    4764222] foldr_1
    │ PASS [mem:   17026, cpu:    4539219] foldr_2
    │ PASS [mem:   13577, cpu:    5264466] foldr_3
    │ PASS [mem:    3933, cpu:     793427] indexed_foldr_1
    │ PASS [mem:   17639, cpu:    6987684] indexed_foldr_2
    │ PASS [mem:    3933, cpu:     793427] reduce_1
    │ PASS [mem:   12423, cpu:    3348704] reduce_2
    │ PASS [mem:   17719, cpu:    4723159] reduce_3
    │ PASS [mem:   13323, cpu:    3168515] reduce_4
    ┕━━━━━━━━━━━━━━━━━━━━ 129 tests | 129 passed | 0 failed

    ┍━ aiken/collection/pairs ━━━━━━━━━━━━━━━━━━━━━━
    │ PASS [mem:    5665, cpu:    2054210] get_all_1
    │ PASS [mem:   11255, cpu:    3854431] get_all_2
    │ PASS [mem:   16181, cpu:    5334596] get_all_3
    │ PASS [mem:   21771, cpu:    7134817] get_all_4
    │ PASS [mem:   20443, cpu:    6494705] get_all_5
    │ PASS [mem:    5433, cpu:    1988358] get_first_1
    │ PASS [mem:   10023, cpu:    3517736] get_first_2
    │ PASS [mem:   10023, cpu:    3517736] get_first_3
    │ PASS [mem:   10023, cpu:    3517736] get_first_4
    │ PASS [mem:   20211, cpu:    6428853] get_first_5
    │ PASS [mem:    5433, cpu:    1988358] get_last_1
    │ PASS [mem:   13421, cpu:    4473595] get_last_2
    │ PASS [mem:   18347, cpu:    5953760] get_last_3
    │ PASS [mem:   25239, cpu:    8032790] get_last_4
    │ PASS [mem:   20211, cpu:    6428853] get_last_5
    │ PASS [mem:    5665, cpu:    2054210] find_all_1
    │ PASS [mem:   11255, cpu:    3873112] find_all_2
    │ PASS [mem:   10591, cpu:    3557172] find_all_3
    │ PASS [mem:   21771, cpu:    7194976] find_all_4
    │ PASS [mem:    5433, cpu:    1988358] find_first_1
    │ PASS [mem:   10023, cpu:    3536417] find_first_2
    │ PASS [mem:   10359, cpu:    3491320] find_first_3
    │ PASS [mem:   10023, cpu:    3536417] find_first_4
    │ PASS [mem:    5433, cpu:    1988358] find_last_1
    │ PASS [mem:   13421, cpu:    4492276] find_last_2
    │ PASS [mem:   10359, cpu:    3491320] find_last_3
    │ PASS [mem:   25239, cpu:    8097065] find_last_4
    │ PASS [mem:    4733, cpu:     945143] has_key_1
    │ PASS [mem:    6562, cpu:    1573529] has_key_2
    │ PASS [mem:    8595, cpu:    2102572] has_key_3
    │ PASS [mem:   10424, cpu:    2730958] has_key_4
    │ PASS [mem:    6562, cpu:    1573529] has_key_5
    │ PASS [mem:    4765, cpu:    1910210] keys_1
    │ PASS [mem:    7325, cpu:    2942669] keys_2
    │ PASS [mem:    9885, cpu:    3975128] keys_3
    │ PASS [mem:    4765, cpu:    1910210] values_1
    │ PASS [mem:    7325, cpu:    2942766] values_2
    │ PASS [mem:    9885, cpu:    3975322] values_3
    │ PASS [mem:   12445, cpu:    5007878] values_4
    │ PASS [mem:    5665, cpu:    2088604] delete_all_1
    │ PASS [mem:   10891, cpu:    3616769] delete_all_2
    │ PASS [mem:   12219, cpu:    4191949] delete_all_3
    │ PASS [mem:   22671, cpu:    7248279] delete_all_4
    │ PASS [mem:    5665, cpu:    2088604] delete_first_1
    │ PASS [mem:    9459, cpu:    3259775] delete_first_2
    │ PASS [mem:   12219, cpu:    4191949] delete_first_3
    │ PASS [mem:    9459, cpu:    3805355] delete_first_4
    │ PASS [mem:    5665, cpu:    2088604] delete_last_1
    │ PASS [mem:   12857, cpu:    5140574] delete_last_2
    │ PASS [mem:   12219, cpu:    4191949] delete_last_3
    │ PASS [mem:   27931, cpu:   11143859] delete_last_4
    │ PASS [mem:   21053, cpu:    7261149] insert_by_ascending_key_1
    │ PASS [mem:   39265, cpu:   14176749] insert_by_ascending_key_2
    │ PASS [mem:   23519, cpu:    8628504] insert_with_by_ascending_key_1
    │ PASS [mem:   44557, cpu:   16333420] insert_with_by_ascending_key_2
    │ PASS [mem:   46499, cpu:   17614107] insert_with_by_ascending_key_3
    │ PASS [mem:   15369, cpu:    5531892] map_1
    │ PASS [mem:   14045, cpu:    5487890] map_2
    │ PASS [mem:   21053, cpu:    6988359] repsert_by_ascending_key_1
    │ PASS [mem:   39265, cpu:   14176749] repsert_by_ascending_key_2
    │ PASS [mem:    4933, cpu:     953427] foldl_1
    │ PASS [mem:   13185, cpu:    3649003] foldl_2
    │ PASS [mem:    4633, cpu:     905427] foldr_1
    │ PASS [mem:   12285, cpu:    3505003] foldr_2
    │ PASS [mem:   16417, cpu:    5127456] foldr_3
    ┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 65 tests | 65 passed | 0 failed

    ┍━ aiken/crypto/bls12_381/g1 ━━━━━━━━━━━━━━━━━━━━━
    │ PASS [mem:    1455, cpu:  183014830] generator_1
    │ PASS [mem:    6031, cpu:  443604144] zero_1
    │ PASS [mem:    1325, cpu:   55950626] compress_1
    │ PASS [mem:    1119, cpu:   53550230] equal_1
    │ PASS [mem:    2173, cpu:   55902829] sub_1
    │ PASS [mem:    9615, cpu:  133078389] scale_1
    │ PASS [mem:    1237, cpu:  106108041] hash_to_group_1
    ┕━━━━━━━━━━━━━━━━━━━━━━━ 7 tests | 7 passed | 0 failed

    ┍━ aiken/crypto/bls12_381/g2 ━━━━━━━━━━━━━━━━━━━━━
    │ PASS [mem:    1509, cpu:  308833576] generator_1
    │ PASS [mem:    6157, cpu:  777559682] zero_1
    │ PASS [mem:    1349, cpu:   78148445] compress_1
    │ PASS [mem:    1137, cpu:   75759594] decompress_1
    │ PASS [mem:    1137, cpu:   75759594] equal_1
    │ PASS [mem:    2245, cpu:   80195812] sub_1
    │ PASS [mem:    9669, cpu:  238127243] scale_1
    │ PASS [mem:    1273, cpu:  242697744] hash_to_group_1
    ┕━━━━━━━━━━━━━━━━━━━━━━━ 8 tests | 8 passed | 0 failed

    ┍━ aiken/crypto/bls12_381/scalar ━━━━━━━━━━━
    │ PASS [mem:   12912, cpu:    6132205] new_1
    │ PASS [mem:    5602, cpu:    3408711] from_bytearray_big_endian_1
    │ PASS [mem:    5602, cpu:    3408711] from_bytearray_little_endian_1
    │ PASS [mem:  119100, cpu:   34145608] scale_1
    │ PASS [mem:  183444, cpu:   51188392] scale2_1
    │ PASS [mem:   10732, cpu:    2934502] add_1
    │ PASS [mem: 3840299, cpu: 1208251881] div_1
    │ PASS [mem:    7926, cpu:    2159566] mul_1
    │ PASS [mem:    9021, cpu:    2326627] neg_1
    │ PASS [mem: 1922069, cpu:  605299789] recip_1
    │ PASS [mem:    7317, cpu:    1860699] sub_1
    │ PASS [mem:     200, cpu:      16100] to_int_1
    │ PASS [mem:    1202, cpu:    1528243] to_bytearray_1
    ┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 13 tests | 13 passed | 0 failed

    ┍━ aiken/interval ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    │ PASS [mem:   14351, cpu:    4066844] contains_1
    │ PASS [mem:   24659, cpu:    7380571] contains_2
    │ PASS [mem:   24659, cpu:    7379118] contains_3
    │ PASS [mem:   25260, cpu:    7552620] contains_4
    │ PASS [mem:   25429, cpu:    7555290] contains_5
    │ PASS [mem:   25429, cpu:    7553837] contains_6
    │ PASS [mem:   26030, cpu:    7727339] contains_7
    │ PASS [mem:   34242, cpu:   10551285] contains_8
    │ PASS [mem:   33641, cpu:   10379236] contains_9
    │ PASS [mem:   33641, cpu:   10379236] contains_10
    │ PASS [mem:   34242, cpu:   10554191] contains_11
    │ PASS [mem:   14952, cpu:    4238893] contains_12
    │ PASS [mem:   16634, cpu:    4986489] is_entirely_after_1
    │ PASS [mem:   17235, cpu:    5158538] is_entirely_after_2
    │ PASS [mem:   17235, cpu:    5158538] is_entirely_after_3
    │ PASS [mem:   19896, cpu:    5895975] is_entirely_after_4
    │ PASS [mem:   19295, cpu:    5723926] is_entirely_after_5
    │ PASS [mem:   16634, cpu:    4985036] is_entirely_after_6
    │ PASS [mem:   12016, cpu:    3198786] is_entirely_after_7
    │ PASS [mem:   12016, cpu:    3198786] is_entirely_after_8
    │ PASS [mem:   12016, cpu:    3198786] is_entirely_after_9
    │ PASS [mem:   17098, cpu:    5213815] is_entirely_before_1
    │ PASS [mem:   17699, cpu:    5385864] is_entirely_before_2
    │ PASS [mem:   17699, cpu:    5385864] is_entirely_before_3
    │ PASS [mem:   19759, cpu:    5951252] is_entirely_before_4
    │ PASS [mem:   20360, cpu:    6123301] is_entirely_before_5
    │ PASS [mem:   17098, cpu:    5212362] is_entirely_before_6
    │ PASS [mem:   11948, cpu:    3264449] is_entirely_before_7
    │ PASS [mem:   11948, cpu:    3264449] is_entirely_before_8
    │ PASS [mem:   11948, cpu:    3264449] is_entirely_before_9
    │ PASS [mem:   67927, cpu:   21380954] hull_1
    │ PASS [mem:   62155, cpu:   19798204] hull_2
    │ PASS [mem:   57421, cpu:   18406584] hull_3
    │ PASS [mem:   67927, cpu:   21380954] intersection_1
    │ PASS [mem:   67927, cpu:   21380954] intersection_2
    │ PASS [mem:   79887, cpu:   24429691] intersection_3
    │ PASS [mem:   82615, cpu:   24906887] intersection_4
    │ PASS [mem:   65580, cpu:   20814634] intersection_5
    │ PASS [mem:   50621, cpu:   16679422] intersection_6
    ┕━━━━━━━━━━━━━━━━━━━━━━━━━━ 39 tests | 39 passed | 0 failed

    ┍━ aiken/math ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    │ PASS [mem:    1502, cpu:     352482] abs_1
    │ PASS [mem:    1502, cpu:     352482] abs_2
    │ PASS [mem:    2603, cpu:     604531] clamp_1
    │ PASS [mem:    2603, cpu:     604531] clamp_2
    │ PASS [mem:    1802, cpu:     400482] clamp_3
    │ PASS [mem:    9911, cpu:    2390778] gcd_test1
    │ PASS [mem:   12414, cpu:    3051090] gcd_test2
    │ PASS [mem:    7408, cpu:    1730466] gcd_test3
    │ PASS [mem:    1101, cpu:     236149] is_sqrt1
    │ PASS [mem:    1101, cpu:     236149] is_sqrt2
    │ PASS [mem:   13120, cpu:    3454680] log_10_2
    │ PASS [mem:   22336, cpu:    6044496] log_42_2
    │ PASS [mem:   18930, cpu:    5062927] log_42_3
    │ PASS [mem:    2702, cpu:     544482] log_5_0
    │ PASS [mem:    3904, cpu:     864864] log_4_4
    │ PASS [mem:    5106, cpu:    1178203] log_4_43
    │ PASS [mem:   58611, cpu:   25348861] log2_matrix
    │ PASS [mem:    1502, cpu:     352482] max_1
    │ PASS [mem:    1502, cpu:     352482] max_2
    │ PASS [mem:    1502, cpu:     352482] max_3
    │ PASS [mem:    1502, cpu:     352482] min_1
    │ PASS [mem:    1502, cpu:     352482] min_2
    │ PASS [mem:    1502, cpu:     352482] min_3
    │ PASS [mem:   23843, cpu:    6677224] pow_3_5
    │ PASS [mem:   17229, cpu:    4696147] pow_7_2
    │ PASS [mem:    3703, cpu:     749772] pow_3__4
    │ PASS [mem:    4605, cpu:    1022154] pow_0_0
    │ PASS [mem:   17833, cpu:    4984308] pow_513_3
    │ PASS [mem:   23239, cpu:    6389063] pow_2_4
    │ PASS [mem:   42477, cpu:   12044133] pow_2_42
    │ PASS [mem:    4405, cpu:     983111] pow2_neg
    │ PASS [mem:    4809, cpu:    1060280] pow2_0
    │ PASS [mem:    4809, cpu:    1060280] pow2_1
    │ PASS [mem:    4809, cpu:    1060280] pow2_4
    │ PASS [mem:   12625, cpu:    3177958] pow2_42
    │ PASS [mem:   36085, cpu:    9539452] pow2_256
    │ PASS [mem:    3867, cpu:    1982370] sqrt1
    │ PASS [mem:    3867, cpu:    1982370] sqrt2
    │ PASS [mem:   16419, cpu:    5572417] sqrt3
    │ PASS [mem:   39561, cpu:   12663095] sqrt4
    │ PASS [mem:  118905, cpu:   36973991] sqrt5
    │ PASS [mem:    2202, cpu:    1419413] sqrt6
    ┕━━━━━━━━━━━━━━━━━ 42 tests | 42 passed | 0 failed

    ┍━ aiken/math/rational ━━━━━━━━━━━━━━━━━━━━━━━━━━
    │ PASS [mem:   19772, cpu:    8367448] from_int_1
    │ PASS [mem:   68246, cpu:   26532809] new_1
    │ PASS [mem:    2297, cpu:    1783029] zero_1
    │ PASS [mem:   51819, cpu:   14820363] denominator_1
    │ PASS [mem:   50791, cpu:   14349711] numerator_1
    │ PASS [mem:   43560, cpu:   15154961] abs_examples
    │ PASS [mem:   38356, cpu:   14040021] negate_1
    │ PASS [mem:   78966, cpu:   27242321] reciprocal_1
    │ PASS [mem:   63053, cpu:   19936160] reduce_1
    │ PASS [mem:   17497, cpu:    5964175] add_1
    │ PASS [mem:   17497, cpu:    5964175] add_2
    │ PASS [mem:   28373, cpu:    9358946] div_1
    │ PASS [mem:   27975, cpu:    9376023] div_2
    │ PASS [mem:   16093, cpu:    5548014] mul_1
    │ PASS [mem:   16093, cpu:    5548014] mul_2
    │ PASS [mem:  105045, cpu:   31675703] mul_3
    │ PASS [mem:   17497, cpu:    5964175] sub_1
    │ PASS [mem:   17497, cpu:    5964175] sub_2
    │ PASS [mem:   17497, cpu:    5964175] sub_3
    │ PASS [mem:   64999, cpu:   22645454] compare_1
    │ PASS [mem:   44310, cpu:   12982946] compare_with_eq
    │ · with traces
    │ | eq(x, y) ? False
    │ | eq(y, x) ? False
    │ PASS [mem:   44880, cpu:   13171546] compare_with_neq
    │ · with traces
    │ | neq(x, x) ? False
    │ PASS [mem:   43077, cpu:   12629911] compare_with_gte
    │ · with traces
    │ | gte(x, y) ? False
    │ PASS [mem:   44310, cpu:   12961817] compare_with_gt
    │ · with traces
    │ | gt(x, y) ? False
    │ | gt(x, x) ? False
    │ PASS [mem:   43077, cpu:   12629911] compare_with_lte
    │ · with traces
    │ | lte(y, x) ? False
    │ PASS [mem:   44310, cpu:   12961817] compare_with_lt
    │ · with traces
    │ | lt(y, x) ? False
    │ | lt(x, x) ? False
    │ PASS [mem:   75041, cpu:   23141555] arithmetic_mean_1
    │ PASS [mem:   75041, cpu:   23141555] arithmetic_mean_2
    │ PASS [mem:  131721, cpu:   41057991] arithmetic_mean_3
    │ PASS [mem:   51920, cpu:   16060222] geometric_mean1
    │ PASS [mem:   28599, cpu:    8951187] geometric_mean2
    │ PASS [mem:   28599, cpu:    8951187] geometric_mean3
    │ PASS [mem:   58532, cpu:   18086130] geometric_mean4
    │ PASS [mem:  151195, cpu:   46317340] geometric_mean5
    │ PASS [mem:   77233, cpu:   22012747] ceil_1
    │ PASS [mem:   51315, cpu:   14613106] floor_1
    │ PASS [mem:   73853, cpu:   22233046] pow_negative_exponent_non_zero_fraction
    │ PASS [mem:   75355, cpu:   22657309] pow_positive_exponent
    │ PASS [mem:   23948, cpu:    7509839] pow_exponent_zero
    │ PASS [mem:   15352, cpu:    4977907] pow_rational_zero_exponent_zero
    │ PASS [mem:   30082, cpu:   10927602] proper_fraction_1
    │ PASS [mem:   30082, cpu:   10927602] proper_fraction_2
    │ PASS [mem:   30082, cpu:   10927602] proper_fraction_3
    │ PASS [mem:  254170, cpu:   76551013] round_1
    │ PASS [mem:  348002, cpu:  103918762] round_even_1
    │ PASS [mem:   51315, cpu:   14613106] truncate_1
    ┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 46 tests | 46 passed | 0 failed

    ┍━ aiken/math/rational.tests ━━━━━━━━━━━━━━━━━━━━━━━━━━
    │ PASS [after 100 tests] prop_power_of_zero_returns_one
    │ PASS [after 100 tests] prop_power_of_one_returns_same_fraction
    │ PASS [after 100 tests] prop_power_numerator_zero_exponent_negative_returns_none
    │ PASS [after 100 tests] prop_power_unit_fraction_is_immutable
    ┕━━━━━━━━━━━━━━━━━━━━━━━━━ with --seed=1946501958 → 4 tests | 4 passed | 0 failed

    ┍━ aiken/option ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    │ PASS [mem:    3868, cpu:    1039063] is_none_1
    │ PASS [mem:    3267, cpu:     867014] is_none_2
    │ PASS [mem:    3267, cpu:     867014] is_some_1
    │ PASS [mem:    3868, cpu:    1039063] is_some_2
    │ PASS [mem:    4167, cpu:    1942229] and_then_1
    │ PASS [mem:    8095, cpu:    3273457] and_then_2
    │ PASS [mem:    6597, cpu:    2702042] and_then_3
    │ PASS [mem:    7263, cpu:    2856431] choice_1
    │ PASS [mem:    4533, cpu:    1844358] choice_2
    │ PASS [mem:   11425, cpu:    4089103] choice_3
    │ PASS [mem:    4163, cpu:    2312354] flatten_1
    │ PASS [mem:    4163, cpu:    2175959] flatten_2
    │ PASS [mem:    3467, cpu:    1830229] flatten_3
    │ PASS [mem:    7425, cpu:    3352949] flatten_4
    │ PASS [mem:    3867, cpu:    1894229] map_1
    │ PASS [mem:    6293, cpu:    2864118] map_2
    │ PASS [mem:    4467, cpu:    1990229] map2_1
    │ PASS [mem:    7361, cpu:    2987568] map2_2
    │ PASS [mem:   10249, cpu:    4323592] map2_3
    │ PASS [mem:    4767, cpu:    2038229] map3_1
    │ PASS [mem:    7461, cpu:    3003568] map3_2
    │ PASS [mem:   12983, cpu:    5104004] map3_3
    │ PASS [mem:    2567, cpu:    1822624] or_try_1
    │ PASS [mem:    2567, cpu:    1822624] or_try_2
    │ PASS [mem:    3467, cpu:     852501] or_else_1
    │ PASS [mem:    4395, cpu:    1273772] or_else_2
    ┕━━━━━━━━━━━━━━━━ 26 tests | 26 passed | 0 failed

    ┍━ aiken/primitive/bytearray ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    │ PASS [mem:    1202, cpu:    1528243] from_int_big_endian_1
    │ PASS [mem:    1202, cpu:    1528243] from_int_big_endian_2
    │ PASS [mem:    1202, cpu:    1528243] from_int_big_endian_3
    │ PASS [mem:     101, cpu:    1322707] from_int_big_endian_4
    │ · with traces
    │ | bytes size below limit when converting from integer
    │          Size 1
    │       Minimum 3
    │ PASS [mem:    1202, cpu:    1528243] from_int_little_endian_1
    │ PASS [mem:    1202, cpu:    1528243] from_int_little_endian_2
    │ PASS [mem:    1202, cpu:    1528243] from_int_little_endian_3
    │ PASS [mem:     101, cpu:    1322707] from_int_little_endian_4
    │ · with traces
    │ | bytes size below limit when converting from integer
    │          Size 1
    │       Minimum 3
    │ PASS [mem:     805, cpu:     142636] from_string_1
    │ PASS [mem:     811, cpu:     271399] from_string_2
    │ PASS [mem:     200, cpu:      16100] push_1
    │ PASS [mem:     200, cpu:      16100] push_2
    │ PASS [mem:     102, cpu:      72288] push_3
    │ · with traces
    │ | attempt to consByteString something than isn't a byte between [0-255]
    │         Found 257
    │ PASS [mem:   50463, cpu:   14540288] index_of_1
    │ PASS [mem:   62853, cpu:   17198175] index_of_2
    │ PASS [mem:   75673, cpu:   21120833] index_of_3
    │ PASS [mem:   35337, cpu:   10591961] index_of_4
    │ PASS [mem:   15169, cpu:    5327563] index_of_5
    │ PASS [mem:    2012, cpu:     454582] is_empty_1
    │ PASS [mem:    2613, cpu:     626631] is_empty_2
    │ PASS [mem:     811, cpu:     186533] length_1
    │ PASS [mem:     811, cpu:     186533] length_2
    │ PASS [mem:    7220, cpu:    1993120] test_bit_0
    │ PASS [mem:    6615, cpu:    1696140] test_bit_1
    │ PASS [mem:    6615, cpu:    1696140] test_bit_2
    │ PASS [mem:    6615, cpu:    1696140] test_bit_3
    │ PASS [mem:    6014, cpu:    1524091] test_bit_7
    │ PASS [mem:    6615, cpu:    1696140] test_bit_8
    │ PASS [mem:   30683, cpu:    8536327] test_bit_20_21_22_23
    │ PASS [mem:    1817, cpu:     445412] drop_1
    │ PASS [mem:    1817, cpu:     445412] drop_2
    │ PASS [mem:    1817, cpu:     445412] drop_3
    │ PASS [mem:    1817, cpu:     445412] drop_4
    │ PASS [mem:     200, cpu:      16100] slice_1
    │ PASS [mem:     200, cpu:      16100] slice_2
    │ PASS [mem:     200, cpu:      16100] slice_3
    │ PASS [mem:     200, cpu:      16100] slice_4
    │ PASS [mem:     200, cpu:      16100] slice_5
    │ PASS [mem:     200, cpu:      16100] take_1
    │ PASS [mem:     200, cpu:      16100] take_2
    │ PASS [mem:     200, cpu:      16100] take_3
    │ PASS [mem:     200, cpu:      16100] take_4
    │ PASS [mem:     200, cpu:      16100] concat_1
    │ PASS [mem:     200, cpu:      16100] concat_2
    │ PASS [mem:     200, cpu:      16100] concat_3
    │ PASS [mem:     200, cpu:      16100] concat_4
    │ PASS [mem:    3913, cpu:     810915] foldl_1
    │ PASS [mem:   11337, cpu:    2864755] foldl_2
    │ PASS [mem:  122790, cpu:   33717544] foldl_3
    │ PASS [mem:   20463, cpu:    5002853] foldl_4
    │ PASS [mem:    4015, cpu:     921080] foldr_1
    │ PASS [mem:   11439, cpu:    2960834] foldr_2
    │ PASS [mem:   20565, cpu:    5077803] foldr_3
    │ PASS [mem:    3913, cpu:     788118] reduce_1
    │ PASS [mem:   13843, cpu:    3316959] reduce_2
    │ PASS [mem:    1002, cpu:    1246348] to_int_big_endian_1
    │ PASS [mem:    1002, cpu:    1246348] to_int_big_endian_2
    │ PASS [mem:    1002, cpu:    1246348] to_int_big_endian_3
    │ PASS [mem:    1002, cpu:    1246348] to_int_little_endian_1
    │ PASS [mem:    1002, cpu:    1246348] to_int_little_endian_2
    │ PASS [mem:    1002, cpu:    1246348] to_int_little_endian_3
    │ PASS [mem:     807, cpu:     205058] to_string_1
    │ PASS [mem:     807, cpu:     386840] to_string_2
    │ PASS [mem:  107711, cpu:   32033967] to_hex_1
    │ PASS [mem:  375397, cpu:  112282437] to_hex_2
    │ PASS [mem:    3137, cpu:     717743] starts_with_1
    │ PASS [mem:    3137, cpu:     717782] starts_with_2
    │ PASS [mem:    4038, cpu:     937793] starts_with_3
    │ PASS [mem:    2823, cpu:     673688] starts_with_4
    │ PASS [mem:    3137, cpu:     717744] starts_with_5
    │ PASS [mem:    2823, cpu:     673688] starts_with_6
    ┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 71 tests | 71 passed | 0 failed

    ┍━ aiken/primitive/int ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    │ PASS [mem:    1002, cpu:    1246348] from_bytearray_big_endian_1
    │ PASS [mem:    1002, cpu:    1246348] from_bytearray_big_endian_2
    │ PASS [mem:    1002, cpu:    1246348] from_bytearray_big_endian_3
    │ PASS [mem:    1002, cpu:    1246348] from_bytearray_little_endian_1
    │ PASS [mem:    1002, cpu:    1246348] from_bytearray_little_endian_2
    │ PASS [mem:    1002, cpu:    1246348] from_bytearray_little_endian_3
    │ PASS [mem:  115787, cpu:   34264609] from_utf8_1
    │ PASS [mem:   54327, cpu:   16309068] from_utf8_2
    │ PASS [mem:  115787, cpu:   34264609] from_utf8_3
    │ PASS [mem:   67588, cpu:   20152129] from_utf8_4
    │ PASS [mem:   30497, cpu:    8842793] from_utf8_5
    │ PASS [mem:   52514, cpu:   15353346] from_utf8_6
    │ PASS [mem:   11875, cpu:    2270499] to_string_1
    │ PASS [mem:   16083, cpu:    3619634] to_string_2
    │ PASS [mem:   19791, cpu:    4829370] to_string_3
    │ PASS [mem:   23499, cpu:    6039106] to_string_4
    ┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 16 tests | 16 passed | 0 failed

    ┍━ aiken/primitive/string ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    │ PASS [mem:     807, cpu:     205058] from_bytearray_1
    │ PASS [mem:     807, cpu:     386840] from_bytearray_2
    │ PASS [mem:     807, cpu:     386840] from_bytearray_3
    │ PASS [mem:   11875, cpu:    2270499] from_int_1
    │ PASS [mem:   16083, cpu:    3619634] from_int_2
    │ PASS [mem:   19791, cpu:    4829370] from_int_3
    │ PASS [mem:   23499, cpu:    6039106] from_int_4
    │ PASS [mem:     200, cpu:      16100] concat_1
    │ PASS [mem:     200, cpu:      16100] concat_2
    │ PASS [mem:     200, cpu:      16100] concat_3
    │ PASS [mem:    5045, cpu:    1053973] join_1
    │ PASS [mem:   20309, cpu:    5543257] join_2
    │ PASS [mem:     805, cpu:     142636] to_bytearray_1
    │ PASS [mem:     811, cpu:     271399] to_bytearray_2
    │ PASS [mem:     811, cpu:     271399] to_bytearray_3
    ┕━━━━━━━━━━━━━━━━━━━━━━ 15 tests | 15 passed | 0 failed

    ┍━ cardano/address/credential ━━━━━━━━━━━━━━━━━━━━━━━
    │ PASS [mem:   81291, cpu:   31276067] compare_matrix
    ┕━━━━━━━━━━━━━━━━━━━━━━ 1 tests | 1 passed | 0 failed

    ┍━ cardano/assets ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    │ PASS [mem:    6065, cpu:    2152604] from_asset_list_1
    │ PASS [mem:     420, cpu:     952045] from_asset_list_2
    │ · with traces
    │ | the validator crashed / exited prematurely
    │ | expect Pair(p, [_, ..] as x) = inner
    │ PASS [mem:     615, cpu:    1750013] from_asset_list_3
    │ · with traces
    │ | the validator crashed / exited prematurely
    │ | value doesn't satisfy predicate
    │ PASS [mem:   33116, cpu:   10426887] from_asset_list_4
    │ PASS [mem:   47789, cpu:   15549704] from_asset_list_5
    │ PASS [mem:   42296, cpu:   13769609] from_asset_list_6
    │ · with traces
    │ | the validator crashed / exited prematurely
    │ | Duplicate policy in the asset list.
    │ PASS [mem:   20902, cpu:    5637398] from_asset_list_7
    │ · with traces
    │ | the validator crashed / exited prematurely
    │ | keys in pairs aren't in ascending order
    │ PASS [mem:  106015, cpu:   33706244] from_asset_list_8
    │ PASS [mem:  117733, cpu:   36900663] from_asset_list_9
    │ PASS [mem:   26662, cpu:   10858183] match_1
    │ PASS [mem:   26431, cpu:    8569663] match_2
    │ PASS [mem:   27263, cpu:   10757442] match_3
    │ PASS [mem:   27263, cpu:   10511931] match_4
    │ PASS [mem:   27263, cpu:   11030232] match_5
    │ PASS [mem:   27263, cpu:   11030232] match_6
    │ PASS [mem:   27263, cpu:   11030232] match_7
    │ PASS [mem:   27263, cpu:    9720840] match_8
    │ PASS [mem:   14657, cpu:    4523907] match_9
    │ PASS [mem:   39773, cpu:   13738354] match_10
    │ PASS [mem:   32573, cpu:   12146023] match_11
    │ PASS [mem:   34665, cpu:   12745143] match_12
    │ PASS [mem:   34564, cpu:    9888215] match_13
    │ PASS [mem:   31902, cpu:   10091961] match_14
    │ PASS [mem:   26463, cpu:   20153376] match_benchmark
    │ PASS [mem:  668784, cpu:  191703289] match_benchmark_vs
    │ PASS [mem:   44070, cpu:   12075603] add_1
    │ PASS [mem:   74130, cpu:   20562618] add_2
    │ PASS [mem:   87735, cpu:   24920523] add_3
    │ PASS [mem:    6034, cpu:    2095659] add_4
    │ PASS [mem:   10937, cpu:    3060374] add_5
    │ PASS [mem:   51986, cpu:   14612915] merge_1
    │ PASS [mem:  194597, cpu:   56619410] merge_2
    │ PASS [mem:   80940, cpu:   22332263] merge_3
    │ PASS [mem:   54114, cpu:   14977647] merge_4
    │ PASS [mem:    9966, cpu:    2852653] merge_5
    │ PASS [mem:   50506, cpu:   13673066] restricted_to_1
    │ PASS [mem:   90217, cpu:   24974521] restricted_to_2
    │ PASS [mem:  173801, cpu:   49075934] restricted_to_3
    │ PASS [mem:  164012, cpu:   45901085] restricted_to_4
    │ PASS [mem:  188836, cpu:   53454818] restricted_to_5
    │ PASS [mem:   17486, cpu:    5194875] without_lovelace_1
    │ PASS [mem:   33837, cpu:    9341650] without_lovelace_2
    │ PASS [mem:   58442, cpu:   17663298] without_lovelace_3
    │ PASS [mem:    5665, cpu:    2054210] flatten_with_1
    │ PASS [mem:  107642, cpu:   30681652] flatten_with_2
    │ PASS [mem:   54925, cpu:   14349920] reduce_1
    │ PASS [mem:   96210, cpu:   27602635] reduce_2
    │ PASS [mem:    4633, cpu:     905427] reduce_3
    ┕━━━━━━━━━━━━━━━━━━━━━━━━ 48 tests | 48 passed | 0 failed

    ┍━ cardano/governance/voter ━━━━━━━━━━━━━━━━━━━━━━━━━
    │ PASS [mem:  241928, cpu:   92359631] compare_matrix
    ┕━━━━━━━━━━━━━━━━━━━━━━ 1 tests | 1 passed | 0 failed

    ┍━ cardano/transaction/output_reference ━━━━━━━━━━━━━
    │ PASS [mem:  103021, cpu:   36856774] compare_matrix
    ┕━━━━━━━━━━━━━━━━━━━━━━ 1 tests | 1 passed | 0 failed

    ┍━ cardano/transaction/script_purpose ━━━━━━━━━━━━━━━
    │ PASS [mem:  666289, cpu:  238841656] compare_matrix
    ┕━━━━━━━━━━━━━━━━━━━━━━ 1 tests | 1 passed | 0 failed

  ⚠ aiken.toml demands compiler version v1.1.4, but you are using v1.1.5.
  help: You may want to switch to v1.1.4

      Summary 1121 checks, 0 errors, 1 warning






      Test is passed