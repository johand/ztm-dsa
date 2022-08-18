defmodule ReverseList do
  def list(str)
      when not is_bitstring(str)
      when byte_size(str) < 2,
      do: "hmm that is not good"

  def list(str) do
    lst = String.graphemes(str)
    reverse(lst, [])
  end

  defp reverse([], acc), do: acc |> Enum.join() |> IO.puts()

  defp reverse([h | t], acc) do
    reverse(t, [h | acc])
  end

  # def list(str) do
  #   str
  #   |> String.reverse()
  #   |> IO.puts()
  # end
end

# ReverseList.list("Hello my name is Foo")
