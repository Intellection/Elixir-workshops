defmodule BinaryTreeSearchTest do
  use ExUnit.Case

  test "searches for an existing value in the binary tree" do
    tree = BinaryTree.build_tree([5, 3, 7])
    assert BinaryTreeSearch.search(tree, 3) == 3
  end

  test "searches for a non-existent value in the binary tree" do
    tree = BinaryTree.build_tree([5, 3, 7])
    assert BinaryTreeSearch.search(tree, 6) == nil
  end

  test "searches for the root value in the binary tree" do
    tree = BinaryTree.build_tree([5, 3, 7])
    assert BinaryTreeSearch.search(tree, 5) == 5
  end

  test "searches for a value in an empty binary tree" do
    tree = %BinaryTree{}
    assert BinaryTreeSearch.search(tree, 5) == nil
  end

  test "searches for an existing value in a node" do
    node = %BinaryTree.Node{
      value: 5,
      left: %BinaryTree.Node{value: 3},
      right: %BinaryTree.Node{value: 7}
    }

    assert BinaryTreeSearch.search_node(node, 3) == 3
  end

  test "searches for a non-existent value in a node" do
    node = %BinaryTree.Node{
      value: 5,
      left: %BinaryTree.Node{value: 3},
      right: %BinaryTree.Node{value: 7}
    }

    assert BinaryTreeSearch.search_node(node, 6) == nil
  end
end
