defmodule LinkedList do
  defstruct data: nil, next: nil, size: 0
  alias LinkedList, as: L

  def new(), do: %L{}

  def add(list, value), do: %L{data: value, next: list, size: list.size + 1}

  def head(%L{data: data}), do: data

  def tail(%L{next: next}), do: next

  def count(list), do: counter(list, 0)

  defp counter(%L{data: nil, next: nil}, acc), do: acc
  defp counter(%L{next: next}, acc), do: counter(next, acc + 1)

  def reverse(list), do: flip(list, new())

  defp flip(%L{data: nil, next: nil}, acc), do: acc
  defp flip(%L{data: data, next: next}, acc), do: flip(next, add(acc, data))

  def to_list(list), do: do_list(list, [])

  defp do_list(%L{data: nil, next: nil}, acc), do: acc
  defp do_list(%L{data: data, next: next}, acc), do: [data | do_list(next, acc)]
end

# LinkedList.new()
# |> LinkedList.add(10)
# |> LinkedList.add(5)
# |> LinkedList.add(16)
