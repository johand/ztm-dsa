defmodule ShowAllPairs do
  def show(lst) do
    for i <- lst do
      for j <- lst do
        IO.puts("#{i} #{j}")
      end
    end
  end
end

# => O(n^2)
# ShowAllPairs.show(["a", "b", "c", "d", "e"])
