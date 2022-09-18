defmodule StackLst do
  defstruct lst: []
  alias StackLst, as: S

  def new(), do: %S{}

  def peek(%S{lst: []}), do: nil
  def peek(%S{lst: [h | _]}), do: h

  def push(%S{lst: lst}, value), do: %S{lst: [value | lst]}

  def pop(%S{lst: []}), do: nil
  def pop(%S{lst: [_ | t]}), do: %S{lst: t}
end

# StackLst.new()
# |> StackLst.push('google')
# |> StackLst.push('udemy')
# |> StackLst.push('discord')
