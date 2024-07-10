defmodule RunTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "generates primes up to 10" do
    assert capture_io(fn ->
             Run.generate_primes(10)
           end) == "Prime: 2\nPrime: 3\nPrime: 5\nPrime: 7\n"
  end

  test "generates primes up to 5" do
    assert capture_io(fn ->
             Run.generate_primes(5)
           end) == "Prime: 2\nPrime: 3\nPrime: 5\n"
  end

  test "generates no primes for limit 1" do
    assert capture_io(fn ->
             Run.generate_primes(1)
           end) == ""
  end

  test "generates primes up to 21" do
    assert capture_io(fn ->
             Run.generate_primes(21)
           end) ==
             "Prime: 2\nPrime: 3\nPrime: 5\nPrime: 7\nPrime: 11\nPrime: 13\nPrime: 17\nPrime: 19\n"
  end
end
