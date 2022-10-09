defmodule BubbleSort do
  def sort([]), do: []
  def sort([x]), do: [x]
  def sort(lst) when not is_list(lst), do: nil

  def sort(lst) do
    case swap(lst) == lst do
      true -> swap(lst)
      false -> sort(swap(lst))
    end
  end

  defp swap([h, s | t]) when h > s, do: [s | swap([h | t])]
  defp swap([h, s | t]), do: [h | swap([s | t])]
  defp swap(lst), do: lst
end

# BubbleSort.sort([99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0])
