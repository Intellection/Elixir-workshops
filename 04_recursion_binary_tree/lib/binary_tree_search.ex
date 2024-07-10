defmodule BinaryTreeSearch do
  @moduledoc """
  A module for searching values in a binary search tree.

  This module provides functions to search for a specific value in a binary search tree.
  """

  @doc """
  Searches for a value in the binary tree.

  ## Parameters:
    - `binary_tree` (%BinaryTree{}): The binary tree to search the value in.
    - `value` (any): The value to search for.

  ## Returns:
    - The value if found, `nil` otherwise.

  ## Examples:
      iex> tree = BinaryTree.build_tree([5, 3, 7])
      iex> BinaryTreeSearch.search(tree, 3)
      3

      iex> BinaryTreeSearch.search(tree, 6)
      nil
  """
  def search(binary_tree, value) do
  end

  @doc """
  Searches for a value in a node and its subtrees.

  ## Parameters:
    - `node` (%BinaryTree.Node{} | nil): The current node to search in.
    - `value` (any): The value to search for.

  ## Returns:
    - The value if found, `nil` otherwise.

  ## Examples:
      iex> node = %BinaryTree.Node{value: 5, left: %BinaryTree.Node{value: 3}, right: %BinaryTree.Node{value: 7}}
      iex> BinaryTreeSearch.search_node(node, 3)
      3

      iex> BinaryTreeSearch.search_node(node, 6)
      nil
  """

  def search_node(node, value) do
  end
end
