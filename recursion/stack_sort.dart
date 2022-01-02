void main() {
  print(sortStack([2,3,1]));
}

List<T> sortStack<T extends num>(List<T> stack) {
  if (stack.isEmpty) {
    return stack;
  }

  var top = stack.removeLast();
  var sortedStack = sortStack(stack);
  var newStack = insert(sortedStack, top);
  return newStack;
}

List<T> insert<T extends num>(List<T> stack, T value) {
  if (stack.isEmpty || stack.last <= value) {
    /// Add function always adds at the last index
    /// which can also be interpreted as the top
    stack.add(value);
    return stack;
  }

  /// removeLast() acts as a pop() func
  var top = stack.removeLast();
  var newStack = insert(stack, value);
  newStack.add(top);
  return newStack;
}
