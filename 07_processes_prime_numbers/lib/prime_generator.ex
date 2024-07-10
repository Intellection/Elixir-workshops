defmodule PrimeGenerator do
  @moduledoc """
  A module for generating prime numbers up to a specified limit using Elixir's concurrency model.

  This module spawns a process to generate prime numbers and sends each prime number back to the parent process, which prints the prime numbers.
  """

  @doc """
  Starts the prime number generation up to the given limit.

  ## Parameters:
    - `limit` (integer): The upper limit for prime number generation.

  ## Returns:
    - `:ok`: After all prime numbers up to the limit have been printed.

  ## Examples:
      iex> PrimeGenerator.start(10)
      Prime: 2
      Prime: 3
      Prime: 5
      Prime: 7
      :ok
  """
  def start(limit) do
  end

  @doc """
  Generates prime numbers from the current number up to the limit and sends them to the parent process.

  ## Parameters:
    - `current` (integer): The current number to check.
    - `limit` (integer): The upper limit for prime number generation.
    - `parent` (pid): The parent process to send prime numbers to.

  ## Examples:
      iex> PrimeGenerator.generate_primes(2, 10, self())
      # This function is used internally and sends messages to the parent process.
  """

  def generate_primes(current, limit, parent) do
  end

  @doc """
  Checks if a number is prime.

  ## Parameters:
    - `n` (integer): The number to check for primality.

  ## Returns:
    - `boolean`: `true` if the number is prime, `false` otherwise.

  ## Examples:
      iex> PrimeGenerator.prime?(2)
      true

      iex> PrimeGenerator.prime?(4)
      false
  """
  def prime?(1), do: false
  def prime?(2), do: true

  def prime?(n) do
    ceiling = :math.sqrt(n) |> floor()

    Enum.reduce_while(2..max(ceiling, 2), true, fn i, _acc ->
      case rem(n, i) do
        0 -> {:halt, false}
        _ -> {:cont, true}
      end
    end)
  end

  @doc """
  Receives and prints prime numbers sent by the generator process.

  ## Returns:
    - `:ok`: After all prime numbers have been received and printed.

  ## Examples:
      iex> PrimeGenerator.receive_primes()
      # This function is used internally to receive and print primes.
  """
  def receive_primes do
  end
end
