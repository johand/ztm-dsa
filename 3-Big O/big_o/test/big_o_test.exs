defmodule BigOTest do
  use ExUnit.Case
  doctest BigO

  test "greets the world" do
    assert BigO.hello() == :world
  end
end
