/// Array or list sort via recursion
List<T> sort<T extends num>(List<T> arr) {
  if (arr.isEmpty) {
    return arr;
  }

  var last = arr.removeLast();
  var sortedArray = sort(arr);
  var newList = insert(sortedArray, last);
  return newList;
}

/// The insert function is also a recursive function
/// used to insert an element into a sorted array
List<T> insert<T extends num>(List<T> arr, T value) {
  if (arr.isEmpty || arr.last <= value) {
    arr.add(value);
    return arr;
  }

  var last = arr.removeLast();
  var newArr = insert(arr, value);
  newArr.add(last);
  return newArr;
}

void main() {
  print(sort([3, 2, 1]));
}
