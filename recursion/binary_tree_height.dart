import 'dart:math';

void main() {
  Node root = createTree();

  print(height(root));
}

/// Height function to calculate height of a given tree
int height(Node? root) {
  if (root == null) return 0;
  if (root.leftChild == null && root.rightChild == null) return 1;
  return 1 + max(height(root.leftChild), height(root.rightChild));
}

/// Node class depicting a node of a tree
class Node<T> {
  T data;
  Node<T>? leftChild;
  Node<T>? rightChild;

  Node({
    required this.data,
    this.leftChild,
    this.rightChild,
  });
}

/// A dummy function that creates a tree
/// and returns the node of the tree;
Node createTree() {
  Node<int> root = Node(data: 1);
  root.leftChild = Node(data: 2);
  root.rightChild = Node(data: 3);
  root.leftChild!.leftChild = Node(data: 4);
  /// The height of the tree here would be 3
  return root;
}
