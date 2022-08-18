defmodule Lists do
  def list(lst) do
    # lookup
    # => O(n)
    Enum.at(lst, 2)

    # appending
    # => O(n)
    _ = lst ++ ['e']

    # delete_at
    # => O(n)
    List.delete_at(lst, -1)

    # prepending
    # => O(1)
    ['x' | lst]

    # insert_at
    # => O(n)
    List.insert_at(lst, 2, 'alien')
  end
end

# Lists.list(["a", "b", "c", "d"])
