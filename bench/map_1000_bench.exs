defmodule Map_1000_Bench do
  use Benchfella

  @source 1..1000 |> then(& Enum.zip(Enum.map(&1, fn x -> "k#{x}" end), &1)) |> Enum.into(%{})
  @size @source |> Enum.count

  bench "001-read_first", do: @source |> Map.get("k1")
  bench "002-read_last", do: @source |> Map.get("k#{@size - 1}")
  bench "003-read_in_middle", do: @source |> Map.get("k#{round(@size / 2)}")
  bench "004-insert_first", do: @source |> Map.put_new("k0", 0)
  bench "005-insert_last", do: @source |> Map.put_new("k#{@size}", 0)
  bench "006-insert_in_middle", do: @source |> Map.put_new("k#{round(@size / 2)}", 0)
  bench "007-1-replace_first", do: @source |> Map.replace("k1", 0)
  bench "007-2-replace_first_vertical", do: %{@source | "k1" => 0}
  bench "008-replace_last", do: @source |> Map.replace("k#{@size - 1}", 0)
  bench "009-replace_in_middle", do: @source |> Map.replace("k#{round(@size / 2)}", 0)
  bench "010-delete_first", do: @source |> Enum.drop(1)
  bench "011-delete_last", do: @source |> Enum.drop(-1)
  bench "012-delete_in_middle", do: @source |> Map.delete("k#{round(@size / 2)}")
end
