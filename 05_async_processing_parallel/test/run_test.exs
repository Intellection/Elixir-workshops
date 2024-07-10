defmodule RunTest do
  use ExUnit.Case

  test "basic computation" do
    result = Run.parallel([1, 2, 3, 4], fn x -> x * 2 end)
    assert result == [2, 4, 6, 8]
  end

  test "string transformation" do
    result = Run.parallel(["elixir", "is", "fun"], &String.upcase/1)
    assert result == ["ELIXIR", "IS", "FUN"]
  end

  test "complex data transformation" do
    data = [%{a: 1}, %{a: 2}, %{a: 3}]
    result = Run.parallel(data, fn %{a: a} -> %{a: a, b: a * 2} end)
    assert result == [%{a: 1, b: 2}, %{a: 2, b: 4}, %{a: 3, b: 6}]
  end

  test "sleep_concurrency" do
    result =
      Run.parallel([1, 2, 3, 4, 5], fn x ->
        :timer.sleep(1000)
        x * 2
      end)

    assert result == [2, 4, 6, 8, 10]
  end
end
