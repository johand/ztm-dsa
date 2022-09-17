defmodule Stack do
  defstruct lst: [], size: 0
  alias Stack, as: S

  def new(), do: %S{}

  def peek(%S{lst: []}), do: nil
  def peek(%S{lst: [h | _]}), do: h

  def push(lst, value) do
    %S{lst: [value: value, next: lst], size: lst.size + 1}
  end

  def pop(%S{lst: []}), do: nil
  def pop(s = %S{lst: [_ | t]}), do: %S{lst: t, size: s.size - 1}
end

# Stack.new()
# |> Stack.push('google')
# |> Stack.push('udemy')
# |> Stack.push('discord')
