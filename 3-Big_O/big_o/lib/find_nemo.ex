defmodule FindNemo do
  def find(lst) do
    for x <- 0..length(lst), Enum.at(lst, x) == "nemo" do
      IO.puts("found NEMO!")
    end
  end
end

# FindNemo.find(["nemo"])
