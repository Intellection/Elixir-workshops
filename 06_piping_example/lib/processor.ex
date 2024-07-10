defmodule Processor do
  @moduledoc """
  A module to demonstrate the use of piping in Elixir with a series of transformations on a list of integers.
  """

  @doc """
  Processes a list of integers by performing the following transformations:
    1. Filters out even numbers.
    2. Doubles the remaining numbers.
    3. Converts the doubled numbers to strings.
    4. Joins the strings with a comma.

  ## Parameters
    - `list` (list of integers): The list of numbers to process.

  ## Returns
    - string: A comma-separated string of the doubled odd numbers.

  ## Examples
      iex> Processor.process_numbers([1, 2, 3, 4, 5])
      "2, 6, 10"

      iex> Processor.process_numbers([2, 4, 6])
      ""
  """
  def process_numbers(list) do
  end
end
