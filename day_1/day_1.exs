{_, day_1_input} = File.read("input.txt")

# PART 1
day_1_input
|> String.split("\n")
|> Enum.map(&String.to_charlist/1)
|> Enum.map(fn list -> Enum.filter(list, &(&1 >= ?0 and &1 <= ?9)) end)
|> Enum.map(&"#{<<hd(&1)>>}#{<<&1 |> Enum.reverse() |> hd()>>}")
|> Enum.reduce(0, &(&2 = &2 + String.to_integer(&1)))
|> IO.inspect(label: "Part 1")

# PART 2
number_map = %{
  "one" => 1,
  "two" => 2,
  "three" => 3,
  "four" => 4,
  "five" => 5,
  "six" => 6,
  "seven" => 7,
  "eight" => 8,
  "nine" => 9
}

day_1_input
|> String.split("\n")
|> Enum.map(fn str ->
  str
  |> String.split("", trim: true)
  |> Enum.reduce("", fn char, outer_acc ->
    Enum.reduce(number_map, outer_acc <> char, fn {k, v}, acc ->
      if String.contains?(acc <> char, k),
        do: String.replace(acc, k, to_string(v)) <> char,
        else: acc
    end)
  end)
end)
|> Enum.map(&String.to_charlist/1)
|> Enum.map(fn list -> Enum.filter(list, &(&1 >= ?0 and &1 <= ?9)) end)
|> Enum.map(&"#{<<hd(&1)>>}#{<<&1 |> Enum.reverse() |> hd()>>}")
|> Enum.reduce(0, &(&2 = &2 + String.to_integer(&1)))
|> IO.inspect(label: "Part 2")