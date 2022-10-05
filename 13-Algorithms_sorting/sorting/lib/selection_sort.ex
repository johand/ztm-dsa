defmodule SelectionSort do
  def sort(lst) when length(lst) < 2, do: lst
  def sort(lst) when not is_list(lst), do: nil
  def sort(lst) when is_list(lst), do: sort(lst, [])
  def sort([], acc), do: acc

  def sort(lst, acc) do
    max = Enum.max(lst)
    sort(List.delete(lst, max), [max | acc])
  end
end

# SelectionSort.sort([99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0])
