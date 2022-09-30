defmodule Fibonacci do
  @moduledoc """
  # O(2^n)
  # Given a number N return the index value of the Fibonacci sequence, where the
  # sequence is:

  # 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144 ...
  # the pattern of the sequence is that each value is the sum of the 2 previous
  # values, that means that for N=5 → 2+3

  # For example: fibonacci(6) should return 8
  """

  def fib(n) when n < 2, do: n
  def fib(n), do: fib(n - 1) + fib(n - 2)
end

# Fibonacci.fib(10)
