defmodule Run do
  @moduledoc """
  Documentation for `Exercise11`.
  """

  alias Library

  @doc """
  Lists available books in the library with their details.

  This function creates predefined authors and books, updates the published year of one book, and then lists all books.

  ## Returns
  - (list of String): A list of strings describing each book's title, author, and published year.

  ## Example
      iex> list_available_library_books()
      ["1984 by George Orwell, published in 1950", "Animal Farm by George Orwell, published in 1945", "Brave New World by Aldous Huxley, published in 1932"]
  """
  def list_available_library_books do
    author1 = Library.create_author("George Orwell", 1903)
    author2 = Library.create_author("Aldous Huxley", 1894)

    book1 = Library.create_book("1984", author1, 2020)
    book2 = Library.create_book("Animal Farm", author1, 1945)
    book3 = Library.create_book("Brave New World", author2, 1932)

    book1 = Library.update_published_year(book1, 1949)
    books = [book1, book2, book3]

    Library.list_books(books)
  end
end
