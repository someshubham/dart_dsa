/// Joseph Problem
/// Game of Death in a circle
/// Read the desc here - 
/// https://practice.geeksforgeeks.org/problems/game-of-death-in-a-circle1840/1
void solve(List<int> arr, int index, int k) {
  if (arr.length == 1) {
    print(arr.first);
    return;
  }

  index = (index + k) % arr.length;
  arr.removeAt(index);
  solve(arr, index, k);
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  int k = 2;
  solve(arr, 0, k - 1);
}
