defmodule ETS_100000_Bench do
  use Benchfella

  @range 1..100000
  @size @range |> Enum.count

  before_each_bench _ do
    tid = :ets.new(:bench_table, [:public])
    @range |> Enum.each(& :ets.insert(tid, {&1, &1}))
    {:ok, tid}
  end
  after_each_bench  tid, do: :ets.delete(tid)

  bench "001-read_first", do: bench_context |> :ets.lookup(1)
  bench "002-read_last", do: bench_context |> :ets.lookup(@size - 1)
  bench "003-read_in_middle", do: bench_context |> :ets.lookup(round(@size / 2))
  bench "004-insert_first", do: bench_context |> :ets.insert({0, 0})
  bench "005-insert_last", do: bench_context |> :ets.insert({@size - 1, 0})
  bench "006-insert_in_middle", do: bench_context |> :ets.insert({round(@size / 2), 0})
  # bench "007-replace_first", do: bench_context |> :ets.select_replace(:ets.fun2ms(fn {k, _v} when k == 1 -> {k, 0} end))
  bench "007-replace_first", do: bench_context |> :ets.select_replace([{{:"$1", :"$2"}, [{:==, :"$1", 1}], [{{:"$1", 0}}]}])
  bench "008-replace_last", do: bench_context |> :ets.select_replace([{{:"$1", :"$2"}, [{:==, :"$1", @size - 1}], [{{:"$1", 0}}]}])
  bench "009-replace_in_middle", do: bench_context |> :ets.select_replace([{{:"$1", :"$2"}, [{:==, :"$1", round(@size / 2)}], [{{:"$1", 0}}]}])
  bench "010-delete_first", do: bench_context |> :ets.delete(1)
  bench "011-delete_last", do: bench_context |> :ets.delete(@size - 1)
  bench "012-delete_in_middle", do: bench_context |> :ets.delete(round(@size / 2))
end
