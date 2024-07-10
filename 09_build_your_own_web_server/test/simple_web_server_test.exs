defmodule SimpleWebServerTest do
  use ExUnit.Case, async: true

  setup do
    :ok
  end

  test "GET / returns 200 and 'Hello, world!'" do
    {response, 0} = System.cmd("curl", ["-i", "http://localhost:8080/"])
    assert response =~ "HTTP/1.1 200 OK"
    assert response =~ "Hello, world!"
  end

  test "GET /notfound returns 404 and 'Not Found'" do
    {response, 0} = System.cmd("curl", ["-i", "http://localhost:8080/notfound"])
    assert response =~ "HTTP/1.1 404 Not Found"
    assert response =~ "Not Found"
  end
end
