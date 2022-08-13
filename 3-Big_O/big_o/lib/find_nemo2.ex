defmodule FindNemo2 do
  def find(lst) do
    t0 = System.monotonic_time(:millisecond)

    for x <- 0..length(lst), Enum.at(lst, x) == "nemo" do
      IO.puts("found NEMO!")
    end

    t1 = System.monotonic_time(:millisecond)
    IO.puts("Call to find Nemo took #{t1 - t0} Milliseconds")
  end
end

# => O(n) Linear Time
# nemo = ["nemo"]
# everyone = ~w(dory bruce marlin nemo gill bloat nigel squirt darla hank)
# FindNemo2.find(everyone)
# FindNemo2.find(List.duplicate("nemo", 100000))
