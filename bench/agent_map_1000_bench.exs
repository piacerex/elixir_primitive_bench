defmodule AgentMap_1000_Bench do
  use Benchfella

  @source 1..1000 |> then(& Enum.zip(Enum.map(&1, fn x -> "k#{x}" end), &1)) |> Enum.into(%{})
  @size @source |> Enum.count

  before_each_bench _ do
    Agent.start_link fn -> @source end
  end

  bench "001-read_first", do: bench_context |> Agent.get(& Map.get(&1, "k1"))
  bench "002-read_last", do: bench_context |> Agent.get(& Map.get(&1, "k#{@size - 1}"))
  bench "003-read_in_middle", do: bench_context |> Agent.get(& Map.get(&1, "k#{round(@size / 2)}"))
  bench "004-insert_first", do: bench_context |> Agent.update(& Map.put_new(&1, "k0", 0))
  bench "005-insert_last", do: bench_context |> Agent.update(& Map.put_new(&1, "k#{@size}", 0))
  bench "006-insert_in_middle", do: bench_context |> Agent.update(& Map.put_new(&1, "k#{round(@size / 2)}", 0))
  bench "007-replace_first", do: bench_context |> Agent.update(& Map.replace(&1, "k1", 0))
  bench "008-replace_last", do: bench_context |> Agent.update(& Map.replace(&1, "k#{@size - 1}", 0))
  bench "009-replace_in_middle", do: bench_context |> Agent.update(& Map.replace(&1, "k#{round(@size / 2)}", 0))
  bench "010-delete_first", do: bench_context |> Agent.update(& Enum.drop(&1, 1))
  bench "011-delete_last", do: bench_context |> Agent.update(& Enum.drop(&1, -1))
  bench "012-delete_in_middle", do: bench_context |> Agent.update(& Map.delete(&1, "k#{round(@size / 2)}"))
end
