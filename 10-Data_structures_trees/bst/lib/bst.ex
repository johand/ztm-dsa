defmodule Bst do
  defstruct data: nil, left: nil, right: nil
  alias Bst, as: B

  def new(value), do: %B{data: value, left: nil, right: nil}

  def insert(nil, value), do: new(value)

  def insert(tree = %B{data: data, left: nil}, value) when value < data do
    %B{tree | left: new(value)}
  end

  def insert(tree = %B{data: data, left: left}, value) when value < data do
    %B{tree | left: insert(left, value)}
  end

  def insert(tree = %B{right: nil}, value), do: %B{tree | right: new(value)}
  def insert(tree = %B{right: right}, value), do: %B{tree | right: insert(right, value)}

  def pre_order_t(nil), do: []

  def pre_order_t(%B{data: data, left: left, right: right}) do
    [data] ++ pre_order_t(left) ++ pre_order_t(right)
  end
end

# Bst.new(9)
# |> Bst.insert(4)
# |> Bst.insert(6)
# |> Bst.insert(20)
# |> Bst.insert(170)
# |> Bst.insert(15)
# |> Bst.insert(1)
# |> Bst.pre_order_t()
