defmodule List_10_Bench do
  use Benchfella

  @source 1..10 |> Enum.to_list
  @size @source |> Enum.count

  bench "001-read_first", do: @source |> List.first
  bench "002-read_last", do: @source |> List.last
  bench "003-read_in_middle", do: @source |> Enum.at(round(@size / 2))
  bench "004-1-insert_first", do: [0] ++ @source
  bench "004-2-insert_first_vertical", do: [0 | @source]
  bench "005-insert_last", do: @source ++ [@size]
  bench "006-insert_in_middle", do: @source |> List.insert_at(round(@size / 2), 0)
  bench "007-replace_first", do: @source |> List.replace_at(0, 0)
  bench "008-replace_last", do: @source |> List.replace_at(@size - 1, 0)
  bench "009-replace_in_middle", do: @source |> List.replace_at(round(@size / 2), 0)
  bench "010-delete_first", do: @source |> Enum.drop(1)
  bench "011-delete_last", do: @source |> Enum.drop(-1)
  bench "012-delete_in_middle", do: @source |> List.delete_at(round(@size / 2))
end
