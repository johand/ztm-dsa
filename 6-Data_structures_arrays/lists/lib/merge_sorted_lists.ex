defmodule MergeSortedLists do
  # def merge(list1, list2) do
  #   Enum.sort(list1 ++ list2)
  # end

  def merge_lists(list1, list2), do: merge(list1, list2)

  defp merge(list1, []), do: list1
  defp merge([], list2), do: list2

  defp merge([h1 | t1], list2 = [h2 | _]) when h1 <= h2 do
    [h1 | merge(t1, list2)]
  end

  defp merge(list1 = [h1 | _], [h2 | t2]) when h1 > h2 do
    [h2 | merge(list1, t2)]
  end
end

# MergeSortedLists.merge_lists([0, 3, 4, 31], [3, 4, 6, 30])
