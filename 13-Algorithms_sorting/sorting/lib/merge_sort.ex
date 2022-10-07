defmodule MergeSort do
  def sort([]), do: []
  def sort([x]), do: [x]
  def sort(lst) when not is_list(lst), do: nil

  def sort(lst) do
    mid = div(Enum.count(lst), 2)
    {left, right} = Enum.split(lst, mid)
    merge(sort(left), sort(right))
  end

  defp merge(left, []), do: left
  defp merge([], right), do: right

  defp merge([lh | lt], right = [rh | _]) when lh <= rh do
    [lh | merge(lt, right)]
  end

  defp merge(left, [rh | rt]), do: [rh | merge(left, rt)]
end

# MergeSort.sort([99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0])
