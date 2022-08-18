defmodule HasPairWithSum do
  def pairs(lst, sum) do
    my_set = MapSet.new()

    my_set = Enum.reduce(lst, my_set, &MapSet.put(&2, sum - &1))
    Enum.any?(lst, &MapSet.member?(my_set, &1))

    # my_set =
    #   Enum.reduce(lst, my_set, fn x, acc ->
    #     MapSet.put(acc, sum - x)
    #   end)

    # Enum.any?(lst, fn x ->
    #   MapSet.member?(my_set, x)
    # end)
  end
end

# HasPairWithSum.pairs([6, 4, 3, 2, 1, 7], 9)
