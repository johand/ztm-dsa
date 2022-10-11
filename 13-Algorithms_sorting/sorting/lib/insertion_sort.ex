defmodule InsertionSort do
  def sort([]), do: []
  def sort([x]), do: [x]
  def sort(lst) when not is_list(lst), do: nil
  def sort([h | t]), do: do_sort([h], t)

  defp do_sort(sorted_lst, []), do: sorted_lst
  defp do_sort(sorted_lst, [h | t]), do: do_sort(switch(h, sorted_lst), t)

  defp switch(x, []), do: [x]
  defp switch(x, sorted_lst = [h | _]) when x <= h, do: [x | sorted_lst]
  defp switch(x, [h | t]), do: [h | switch(x, t)]
end

# InsertionSort.sort([99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0])
