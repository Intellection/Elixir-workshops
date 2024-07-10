defmodule RunTest do
  use ExUnit.Case

  test "process numbers with mixed odd and even" do
    result = Run.process([1, 2, 3, 4, 5])
    assert result == "2, 6, 10"
  end

  test "process numbers with all even" do
    result = Run.process([2, 4, 6])
    assert result == ""
  end

  test "process numbers with all odd" do
    result = Run.process([1, 3, 5])
    assert result == "2, 6, 10"
  end

  test "process an empty list" do
    result = Run.process([])
    assert result == ""
  end
end
