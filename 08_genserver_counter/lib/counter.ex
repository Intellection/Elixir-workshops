defmodule Counter do
  @moduledoc """
  A simple counter implemented using a GenServer.

  This module provides functions to start the counter server, increment, decrement, reset,
  and get the current value of the counter. It uses Elixir's GenServer to manage the state
  of the counter.
  """

  use GenServer

  @doc """
  Starts the counter server with an optional initial value.

  ## Parameters:
    - `initial_value` (integer, optional): The initial value of the counter. Defaults to 0.

  ## Returns:
    - `{:ok, pid}`: On successful start.
    - `{:error, reason}`: If there is an error starting the server.

  ## Examples:
      iex> Counter.start_link(10)
      {:ok, #PID<0.123.0>}
  """
  def start_link(initial_value \\ 0) do
    GenServer.start_link(__MODULE__, initial_value, name: __MODULE__)
  end

  @doc """
  Increments the counter by 1.

  ## Returns:
    - `:ok`: On successful increment.

  ## Examples:
      iex> Counter.increment()
      :ok
  """
  def increment do
  end

  @doc """
  Decrements the counter by 1.

  ## Returns:
    - `:ok`: On successful decrement.

  ## Examples:
      iex> Counter.decrement()
      :ok
  """
  def decrement do
  end

  @doc """
  Resets the counter to 0.

  ## Returns:
    - `:ok`: On successful reset.

  ## Examples:
      iex> Counter.reset()
      :ok
  """
  def reset do
  end

  @doc """
  Gets the current value of the counter.

  ## Returns:
    - `integer`: The current value of the counter.

  ## Examples:
      iex> Counter.value()
      0
  """
  def value do
  end

  ## GenServer Callbacks

  @impl true
  def init(initial_value) do
    {:ok, initial_value}
  end

  @impl true
  def handle_cast(request, state) do
    {:noreply, state + 1}
  end

  @impl true
  def handle_call(message, _from, state) do
  end
end
