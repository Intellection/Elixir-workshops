defmodule Run do
  @moduledoc """
  .
  """

  alias DistanceCalculator

  def calculate_distance_from_origin(coordinates) do
    DistanceCalculator.distances_from_origin(coordinates)
  end
end
