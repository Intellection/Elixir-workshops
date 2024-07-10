defmodule RunTest do
  use ExUnit.Case
  alias Run

  test "list_books/1" do
    assert Run.list_available_library_books() == [
             "1984 by George Orwell, published in 1949",
             "Animal Farm by George Orwell, published in 1945",
             "Brave New World by Aldous Huxley, published in 1932"
           ]
  end
end
