/// This function is used to return a reversed stack
List<T> reverse<T extends num>(List<T> stack) {
  if (stack.isEmpty) {
    return stack;
  }
  T top = stack.removeLast();
  List<T> reversedStack = reverse(stack);
  return insertAtLast(reversedStack, top);
}

/// This would insert any element at the last of the stack
List<T> insertAtLast<T extends num>(List<T> stack, T value) {
  if (stack.isEmpty) {
    stack.add(value);
    return stack;
  }
  T top = stack.removeLast();
  List<T> newStack = insertAtLast(stack, value);
  newStack.add(top);
  return newStack;
}

void main() {
  List<int> stack = [5, 6, 1, 7];

  print("Original Stack: $stack");
  print("Reversed Stack: ${reverse(stack)}");
}
