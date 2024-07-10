defmodule Run do
  @moduledoc """
  Documentation for `Exercise2`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Exercise2.hello()
      :world

  """
  def generate_primes(number) do
    PrimeGenerator.start(number)
  end
end
