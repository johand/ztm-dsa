defmodule ContainsCommonItem do
  def items(lst1, lst2) do
    # Loop through first list and create map where properties === items in
    # the list
    map = %{}
    map = Enum.reduce(lst1, map, &Map.put(&2, &1, true))

    # loop through second list and check if item in second list exists on
    # created map
    Enum.any?(lst2, &Map.has_key?(map, &1))

    # map =
    #   Enum.reduce(lst1, map, fn x, acc ->
    #     Map.put(acc, x, 1)
    #   end)

    # Enum.any?(lst2, fn x -> Map.has_key?(map, x) end)
  end

  # def items2(lst1, lst2) do
  #   not MapSet.disjoint?(MapSet.new(lst1), MapSet.new(lst2))
  # end
end

# O(a + b) Time Complexity
# ContainsCommonItem.items(["a", "b", "c", "x"], ["z", "y", "a"])
# ContainsCommonItem.items2(["a", "b", "c", "x"], ["z", "y", "a"])
