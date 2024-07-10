defmodule BinaryTree do
  @moduledoc """
  A module for creating and managing a binary search tree.

  This module provides functions to insert values into the tree and build a tree from a list of values.
  """

  defstruct root: nil

  defmodule Node do
    @moduledoc """
    A struct representing a node in the binary search tree.

    Each node contains a value, and pointers to the left and right child nodes.
    """
    defstruct [:value, :left, :right]
  end

  @doc """
  Inserts a value into the binary tree.

  ## Parameters:
    - `tree` (%BinaryTree{}): The binary tree to insert the value into.
    - `value` (any): The value to insert.

  ## Returns:
    - %BinaryTree{}: The updated binary tree with the new value inserted.

  ## Examples:
      iex> tree = %BinaryTree{}
      iex> tree = BinaryTree.insert(tree, 5)
      iex> tree = BinaryTree.insert(tree, 3)
      iex> tree = BinaryTree.insert(tree, 7)
      %BinaryTree{
        root: %BinaryTree.Node{
          value: 5,
          left: %BinaryTree.Node{value: 3, left: nil, right: nil},
          right: %BinaryTree.Node{value: 7, left: nil, right: nil}
        }
      }
  """
  def insert(tree, value) do
  end

  @doc false
  def insert_node(node, value) do
  end

  @doc """
  Builds a binary tree from a list of values.

  ## Parameters:
    - `list` (list): The list of values to insert into the binary tree.

  ## Returns:
    - %BinaryTree{}: The binary tree built from the list of values.

  ## Examples:
      iex> BinaryTree.build_tree([5, 3, 7])
      %BinaryTree{
        root: %BinaryTree.Node{
          value: 5,
          left: %BinaryTree.Node{value: 3, left: nil, right: nil},
          right: %BinaryTree.Node{value: 7, left: nil, right: nil}
        }
      }
  """
  def build_tree(list) when is_list(list) do
  end
end
