defmodule BinaryTreeTest do
  use ExUnit.Case

  test "inserts values into the binary tree" do
    tree = %BinaryTree{}
    tree = BinaryTree.insert(tree, 5)
    tree = BinaryTree.insert(tree, 3)
    tree = BinaryTree.insert(tree, 7)

    expected_tree = %BinaryTree{
      root: %BinaryTree.Node{
        value: 5,
        left: %BinaryTree.Node{value: 3, left: nil, right: nil},
        right: %BinaryTree.Node{value: 7, left: nil, right: nil}
      }
    }

    assert tree == expected_tree
  end

  test "builds a binary tree from a list of values" do
    tree = BinaryTree.build_tree([5, 3, 7])

    expected_tree = %BinaryTree{
      root: %BinaryTree.Node{
        value: 5,
        left: %BinaryTree.Node{value: 3, left: nil, right: nil},
        right: %BinaryTree.Node{value: 7, left: nil, right: nil}
      }
    }

    assert tree == expected_tree
  end

  test "builds a binary tree from an empty list" do
    tree = BinaryTree.build_tree([])

    expected_tree = %BinaryTree{root: nil}

    assert tree == expected_tree
  end
end
