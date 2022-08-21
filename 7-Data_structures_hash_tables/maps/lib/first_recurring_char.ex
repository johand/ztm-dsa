# Google Question

# Given a list = [2,5,1,2,3,5,1,2,4]:
# It should return 2

# Given a list = [2,1,1,2,3,5,1,2,4]:
# It should return 1

# Given a list = [2,3,4,5]:
# It should return nil

defmodule FirstRecurringChar do
  def find_character(input) do
    result =
      input
      |> Enum.with_index()
      |> Enum.reduce_while(%{}, fn {e, i}, acc ->
        if Map.has_key?(acc, e), do: {:halt, e}, else: {:cont, Map.put(acc, e, i)}
      end)

    with char when is_number(char) <- result do
      char
    else
      _ -> nil
    end
  end
end

# FirstRecurringChar.find_character([2, 5, 1, 2, 3, 5, 1, 2, 4])
