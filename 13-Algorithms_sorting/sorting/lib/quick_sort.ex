defmodule QuickSort do
  def sort([]), do: []
  def sort([x]), do: [x]
  def sort(lst) when not is_list(lst), do: nil

  def sort([p | t]) do
    {l, r} = Enum.split_with(t, &(&1 < p))
    sort(l) ++ sort([p]) ++ sort(r)
  end
end

# QuickSort.sort([99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0])
