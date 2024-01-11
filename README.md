# Results

Elixir 1.16 + OTP26.2.1
AMD Ryzen 7 6800U with Radeon Graphics

## List_10_Bench
```
benchmark name               iterations   average time 
005-insert_last              1000000000   0.00 µs/op
004-2-insert_first_vertical  1000000000   0.00 µs/op
004-1-insert_first           1000000000   0.00 µs/op
001-read_first               1000000000   0.00 µs/op
010-delete_first             1000000000   0.01 µs/op
007-replace_first            1000000000   0.01 µs/op
002-read_last                1000000000   0.01 µs/op
003-read_in_middle            100000000   0.03 µs/op
006-insert_in_middle          100000000   0.03 µs/op
009-replace_in_middle         100000000   0.03 µs/op
012-delete_in_middle          100000000   0.05 µs/op
008-replace_last              100000000   0.06 µs/op
011-delete_last               100000000   0.10 µs/op
```

## List_1000_Bench
```
benchmark name               iterations   average time 
004-2-insert_first_vertical  1000000000   0.00 µs/op
005-insert_last              1000000000   0.00 µs/op
004-1-insert_first           1000000000   0.00 µs/op
001-read_first               1000000000   0.00 µs/op
010-delete_first             1000000000   0.01 µs/op
007-replace_first            1000000000   0.01 µs/op
003-read_in_middle             10000000   0.59 µs/op
002-read_last                  10000000   0.96 µs/op
009-replace_in_middle           1000000   2.38 µs/op
006-insert_in_middle            1000000   2.56 µs/op
012-delete_in_middle             500000   4.03 µs/op
008-replace_last                 500000   5.67 µs/op
011-delete_last                  500000   6.51 µs/op
```

## List_100000_Bench
```
benchmark name               iterations   average time 
005-insert_last              1000000000   0.00 µs/op
004-2-insert_first_vertical  1000000000   0.00 µs/op
004-1-insert_first           1000000000   0.00 µs/op
001-read_first               1000000000   0.00 µs/op
010-delete_first             1000000000   0.01 µs/op
007-replace_first            1000000000   0.01 µs/op
003-read_in_middle                50000   58.15 µs/op
002-read_last                     20000   95.82 µs/op
009-replace_in_middle              5000   489.64 µs/op
006-insert_in_middle               5000   493.66 µs/op
012-delete_in_middle               5000   709.21 µs/op
008-replace_last                   2000   991.20 µs/op
011-delete_last                    1000   1024.39 µs/op
```

## Map_10_Bench
```
benchmark name                iterations   average time 
007-2-replace_first_vertical  1000000000   0.00 µs/op
001-read_first                 100000000   0.01 µs/op
007-1-replace_first            100000000   0.04 µs/op
005-insert_last                100000000   0.06 µs/op
003-read_in_middle             100000000   0.09 µs/op
006-insert_in_middle           100000000   0.09 µs/op
012-delete_in_middle            10000000   0.10 µs/op
004-insert_first                10000000   0.11 µs/op
002-read_last                   10000000   0.12 µs/op
011-delete_last                 10000000   0.13 µs/op
009-replace_in_middle           10000000   0.16 µs/op
008-replace_last                10000000   0.21 µs/op
010-delete_first                10000000   0.21 µs/op
```

## Map_1000_Bench
```
benchmark name                iterations   average time 
007-2-replace_first_vertical  1000000000   0.00 µs/op
001-read_first                 100000000   0.02 µs/op
002-read_last                  100000000   0.09 µs/op
005-insert_last                100000000   0.09 µs/op
003-read_in_middle             100000000   0.09 µs/op
006-insert_in_middle           100000000   0.09 µs/op
004-insert_first                10000000   0.13 µs/op
012-delete_in_middle            10000000   0.13 µs/op
007-1-replace_first             10000000   0.15 µs/op
009-replace_in_middle           10000000   0.17 µs/op
008-replace_last                10000000   0.18 µs/op
011-delete_last                   100000   12.92 µs/op
010-delete_first                  100000   25.65 µs/op
```

## Map_100000_Bench
```
benchmark name                iterations   average time 
007-2-replace_first_vertical  1000000000   0.00 µs/op
001-read_first                 100000000   0.03 µs/op
003-read_in_middle             100000000   0.08 µs/op
002-read_last                  100000000   0.08 µs/op
006-insert_in_middle           100000000   0.08 µs/op
005-insert_last                100000000   0.09 µs/op
012-delete_in_middle            10000000   0.20 µs/op
004-insert_first                10000000   0.22 µs/op
007-1-replace_first             10000000   0.22 µs/op
009-replace_in_middle           10000000   0.23 µs/op
008-replace_last                10000000   0.24 µs/op
011-delete_last                      500   4850.70 µs/op
010-delete_first                     200   8211.40 µs/op
```

## Tuple_10_Bench
```
benchmark name            iterations   average time 
003-read_in_middle        1000000000   0.00 µs/op
002-read_last             1000000000   0.00 µs/op
001-read_first            1000000000   0.00 µs/op
011-delete_last            100000000   0.01 µs/op
010-delete_first           100000000   0.01 µs/op
005-2-insert_last_append   100000000   0.02 µs/op
004-insert_first           100000000   0.02 µs/op
005-1-insert_last          100000000   0.02 µs/op
012-delete_in_middle       100000000   0.02 µs/op
006-insert_in_middle       100000000   0.02 µs/op
```

## Tuple_1000_Bench
```
benchmark name            iterations   average time 
002-read_last             1000000000   0.00 µs/op
003-read_in_middle        1000000000   0.00 µs/op
001-read_first            1000000000   0.00 µs/op
010-delete_first            10000000   0.36 µs/op
011-delete_last             10000000   0.37 µs/op
006-insert_in_middle        10000000   0.38 µs/op
012-delete_in_middle        10000000   0.38 µs/op
005-1-insert_last           10000000   0.38 µs/op
004-insert_first            10000000   0.40 µs/op
005-2-insert_last_append    10000000   0.46 µs/op
```

## Tuple_100000_Bench
```
benchmark name            iterations   average time 
003-read_in_middle        1000000000   0.00 µs/op
002-read_last             1000000000   0.00 µs/op
001-read_first            1000000000   0.00 µs/op
010-delete_first               50000   35.01 µs/op
005-1-insert_last              50000   35.01 µs/op
006-insert_in_middle           50000   35.70 µs/op
011-delete_last                50000   35.96 µs/op
004-insert_first               50000   36.34 µs/op
012-delete_in_middle           50000   39.27 µs/op
005-2-insert_last_append       50000   41.82 µs/op
```

## ETS_10_Bench
```
benchmark name          iterations   average time 
012-delete_in_middle     100000000   0.02 µs/op
011-delete_last          100000000   0.02 µs/op
010-delete_first         100000000   0.02 µs/op
003-read_in_middle       100000000   0.03 µs/op
001-read_first           100000000   0.03 µs/op
002-read_last            100000000   0.03 µs/op
006-insert_in_middle     100000000   0.04 µs/op
004-insert_first         100000000   0.04 µs/op
005-insert_last          100000000   0.04 µs/op
009-replace_in_middle      1000000   1.36 µs/op
007-replace_first          1000000   1.39 µs/op
008-replace_last           1000000   1.40 µs/op
```

## ETS_1000_Bench
```
benchmark name          iterations   average time 
011-delete_last          100000000   0.02 µs/op
012-delete_in_middle     100000000   0.02 µs/op
010-delete_first         100000000   0.02 µs/op
003-read_in_middle       100000000   0.03 µs/op
001-read_first           100000000   0.03 µs/op
002-read_last            100000000   0.03 µs/op
005-insert_last          100000000   0.04 µs/op
004-insert_first         100000000   0.04 µs/op
006-insert_in_middle     100000000   0.04 µs/op
007-replace_first            50000   29.73 µs/op
008-replace_last            100000   29.74 µs/op
009-replace_in_middle       100000   30.22 µs/op
```

## ETS_100000_Bench
```
benchmark name          iterations   average time 
012-delete_in_middle     100000000   0.02 µs/op
011-delete_last          100000000   0.02 µs/op
010-delete_first         100000000   0.02 µs/op
001-read_first           100000000   0.03 µs/op
003-read_in_middle       100000000   0.03 µs/op
002-read_last            100000000   0.03 µs/op
004-insert_first         100000000   0.04 µs/op
005-insert_last          100000000   0.04 µs/op
006-insert_in_middle     100000000   0.04 µs/op
009-replace_in_middle          500   3435.56 µs/op
007-replace_first              500   3505.99 µs/op
008-replace_last               500   3582.54 µs/op
```

## AgentMap_10_Bench
```
benchmark name          iterations   average time 
010-delete_first           1000000   1.03 µs/op
004-insert_first           1000000   1.05 µs/op
001-read_first             1000000   1.06 µs/op
007-replace_first          1000000   1.10 µs/op
011-delete_last            1000000   1.11 µs/op
005-insert_last            1000000   1.15 µs/op
003-read_in_middle         1000000   1.16 µs/op
006-insert_in_middle       1000000   1.17 µs/op
002-read_last              1000000   1.19 µs/op
012-delete_in_middle       1000000   1.19 µs/op
009-replace_in_middle      1000000   1.28 µs/op
008-replace_last           1000000   1.30 µs/op
```

## AgentMap_1000_Bench
```
benchmark name          iterations   average time 
010-delete_first           1000000   1.01 µs/op
011-delete_last            1000000   1.04 µs/op
004-insert_first           1000000   1.06 µs/op
001-read_first             1000000   1.10 µs/op
007-replace_first          1000000   1.12 µs/op
002-read_last              1000000   1.16 µs/op
003-read_in_middle         1000000   1.16 µs/op
005-insert_last            1000000   1.18 µs/op
012-delete_in_middle       1000000   1.19 µs/op
006-insert_in_middle       1000000   1.19 µs/op
008-replace_last           1000000   1.23 µs/op
009-replace_in_middle      1000000   1.24 µs/op
```

## AgentMap_100000_Bench
```
benchmark name          iterations   average time 
010-delete_first           1000000   1.01 µs/op
004-insert_first           1000000   1.06 µs/op
001-read_first             1000000   1.11 µs/op
003-read_in_middle         1000000   1.15 µs/op
002-read_last              1000000   1.16 µs/op
005-insert_last            1000000   1.17 µs/op
012-delete_in_middle       1000000   1.18 µs/op
006-insert_in_middle       1000000   1.20 µs/op
007-replace_first          1000000   1.24 µs/op
008-replace_last           1000000   1.26 µs/op
009-replace_in_middle      1000000   1.35 µs/op
011-delete_last               1000   1104.57 µs/op
```

# How to benchmark

iex> mix bench

iex> mix bench bench/agent_list_10_bench.exs
iex> mix bench bench/agent_list_1000_bench.exs
iex> mix bench bench/agent_list_100000_bench.exs

iex> mix bench bench/map_10_bench.exs
iex> mix bench bench/tuple_10_bench.exs
iex> mix bench bench/etd_10_bench.exs
iex> mix bench bench/agent_map_10_bench.exs

iex> mix bench.graph
