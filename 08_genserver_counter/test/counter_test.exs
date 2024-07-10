defmodule CounterTest do
  use ExUnit.Case

  setup do
    {:ok, _pid} = Counter.start_link(0)
    :ok
  end

  test "initial value is 0" do
    assert Counter.value() == 0
  end

  test "increment the counter" do
    Counter.increment()
    assert Counter.value() == 1
  end

  test "decrement the counter" do
    Counter.increment()
    Counter.increment()
    Counter.decrement()
    assert Counter.value() == 1
  end

  test "reset the counter" do
    Counter.increment()
    Counter.reset()
    assert Counter.value() == 0
  end

  test "counter maintains state" do
    Counter.increment()
    Counter.increment()
    Counter.increment()
    assert Counter.value() == 3
  end
end
