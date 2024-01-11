defmodule Tuple_1000_Bench do
  use Benchfella

  @source 1..1000 |> Enum.to_list |> List.to_tuple
  @size @source |> Tuple.to_list |> Enum.count

  bench "001-read_first", do: @source |> elem(0)
  bench "002-read_last", do: @source |> elem(@size - 1)
  bench "003-read_in_middle", do: @source |> elem(round(@size / 2))
  bench "004-insert_first", do: @source |> Tuple.insert_at(0, 0)
  bench "005-1-insert_last", do: @source |> Tuple.insert_at(@size, 0)
  bench "005-2-insert_last_append", do: @source |> Tuple.append(0)
  bench "006-insert_in_middle", do: @source |> Tuple.insert_at(round(@size / 2), 0)
  bench "010-delete_first", do: @source |> Tuple.delete_at(0)
  bench "011-delete_last", do: @source |> Tuple.delete_at(@size - 1)
  bench "012-delete_in_middle", do: @source |> Tuple.delete_at(round(@size / 2))
end
