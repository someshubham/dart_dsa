void main() {
  List<int> stack = [1, 2, 3, 4, 5];
  int mid = (stack.length ~/ 2);

  print(deleteElement(stack, mid));
}

/// deleteElement deletes the element whose index is passed into the function
List<T> deleteElement<T extends num>(List<T> stack, T index) {
  if (stack.length == index+1) {
    stack.removeLast();
    return stack;
  }

  T top = stack.removeLast();
  var newStack = deleteElement(stack, index);
  newStack.add(top);
  return newStack;
}
