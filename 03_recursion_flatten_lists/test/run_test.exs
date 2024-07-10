defmodule ListFlattenerTest do
  use ExUnit.Case
  doctest ListFlattener

  test "flattens a nested list" do
    assert Run.flatten([1, [2, 3], [4, [5, 6]], 7]) == [1, 2, 3, 4, 5, 6, 7]
  end

  test "flattens deeply nested lists" do
    assert Run.flatten([1, [2, [3, [4, [5]]]]]) == [1, 2, 3, 4, 5]
  end

  test "flattens an empty list" do
    assert Run.flatten([]) == []
  end

  test "flattens a list with no nested elements" do
    assert Run.flatten([1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
  end

  test "flattens a list with a single element" do
    assert Run.flatten([1]) == [1]
  end

  test "flattens a list with nested empty lists" do
    assert Run.flatten([[], [[]], [[[]]]]) == []
  end
end
