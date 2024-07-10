defmodule SimpleWebServer do
  @moduledoc """
  A simple web server implemented using Elixir's `:gen_tcp` module.

  This module provides functions to start and stop the server, accept connections, and handle basic HTTP requests.
  """

  @doc """
  Starts the web server on the given port.

  ## Parameters:
    - `port` (integer): The port number to start the server on.

  ## Returns:
    - `{:ok, pid}`: The PID of the acceptor process.

  ## Examples:
      iex> {:ok, pid} = SimpleWebServer.start(8080)
      {:ok, #PID<0.123.0>}
  """
  def start(port) do
    {:ok, socket} = :gen_tcp.listen(port, [:binary, packet: :raw, active: false, reuseaddr: true])
    pid = spawn(fn -> loop_acceptor(socket) end)
    {:ok, pid}
  end

  @doc """
  Stops the web server by terminating the acceptor process.

  ## Parameters:
    - `pid` (PID): The PID of the acceptor process.

  ## Returns:
    - `:ok`: Always returns `:ok`.

  ## Examples:
      iex> SimpleWebServer.stop(pid)
      :ok
  """
  def stop(pid) do
    Process.exit(pid, :normal)
  end

  @doc """
  Accepts incoming connections and spawns a process to handle each connection.

  ## Parameters:
    - `socket` (port): The socket on which to accept connections.

  ## Returns:
    - `:ok`: Always returns `:ok`.
  """
  def loop_acceptor(socket) do
  end

  @doc """
  Handles an accepted client connection.

  ## Parameters:
    - `client` (port): The client socket.

  ## Returns:
    - `:ok`: Always returns `:ok`.
  """
  def serve(client) do
    client
    |> read_request()
    |> parse_request()
    |> handle_request()
    |> write_response(client)

    :gen_tcp.close(client)
  end

  @doc """
  Reads a request from the client socket.

  ## Parameters:
    - `socket` (port): The client socket.

  ## Returns:
    - `String.t()`: The raw request data.

  ## Examples:
      iex> SimpleWebServer.read_request(client)
      "GET / HTTP/1.1\r\n..."
  """
  def read_request(socket) do
  end

  @doc """
  Parses the raw request data into a map.

  ## Parameters:
    - `request` (String.t()): The raw request data.

  ## Returns:
    - `map()`: A map with `:method` and `:path` keys.

  ## Examples:
      iex> SimpleWebServer.parse_request("GET / HTTP/1.1\r\n...")
      %{method: "GET", path: "/"}
  """
  def parse_request(request) do
  end

  @doc """
  Handles the parsed request and returns a response map.

  ## Parameters:
    - `request` (map()): The parsed request data.

  ## Returns:
    - `map()`: A map with `:status` and `:body` keys.

  ## Examples:
      iex> SimpleWebServer.handle_request(%{method: "GET", path: "/"})
      %{status: 200, body: "Hello, world!"}

      iex> SimpleWebServer.handle_request(%{method: "GET", path: "/unknown"})
      %{status: 404, body: "Not Found"}
  """
  def handle_request(request) do
  end

  @doc """
  Writes the response to the client socket.

  ## Parameters:
    - `response` (map()): The response data.
    - `socket` (port): The client socket.

  ## Returns:
    - `:ok`: Always returns `:ok`.

  ## Examples:
      iex> response = %{status: 200, body: "Hello, world!"}
      iex> SimpleWebServer.write_response(response, client)
      :ok
  """
  def write_response(%{status: status, body: body}, socket) do
    :gen_tcp.send(socket, "HTTP/1.1 #{status} #{status_message(status)}\r\n")
    :gen_tcp.send(socket, "Content-Length: #{byte_size(body)}\r\n")
    :gen_tcp.send(socket, "Content-Type: text/plain\r\n\r\n")
    :gen_tcp.send(socket, body)
  end

  @doc """
  Returns the status message for a given status code.

  ## Parameters:
    - `status` (integer): The HTTP status code.

  ## Returns:
    - `String.t()`: The corresponding status message.

  ## Examples:
      iex> SimpleWebServer.status_message(200)
      "OK"

      iex> SimpleWebServer.status_message(404)
      "Not Found"
  """
  def status_message(status) do
  end
end
