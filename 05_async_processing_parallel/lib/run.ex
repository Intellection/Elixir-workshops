defmodule Run do
  @moduledoc """
  .
  """
  def parallel(list, anonymouse_function) do
    Parallel.map(list, anonymouse_function)
  end
end
