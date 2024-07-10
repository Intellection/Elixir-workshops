# Library structs Example

The intention of this example is to familiarise yourself with structs which are different to objects in languages like Ruby and Javascript.

## Useful Reading

- Modules: [Module](https://hexdocs.pm/elixir/modules-and-functions.html)
- Aliases: [Aliases](https://hexdocs.pm/elixir/alias-require-and-import.html)
- Structs: [Structs](https://hexdocs.pm/elixir/structs.html)

## Library Application

This application is a simple demonstration of managing authors and books within a library system using Elixir. It includes functions to create authors, create books, update book details, and list all books with their details.

### Modules

#### Library

The `Library` module contains the core functionalities for managing authors and books.

#### Author

The `Author` struct represents an author with a name and birth year.

#### Book

The `Book` struct represents a book with a title, an author, and a published year.

### Run

The `Run` module contains a function to list available books in the library with their details.
