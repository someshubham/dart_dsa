/// It is a classic Tower of Hanoi problem
/// where we have to move all the disks from
/// tower A to tower C with the Help of tower B
/// Only one disk at a time and in Ascending order
void towerOfHanoi(
  int n, {
  required String source,
  required String destination,
  required String helper,
}) {
  if (n == 1) {
    print("$source -> $destination");
    return;
  }

  towerOfHanoi(n - 1, source: source, destination: helper, helper: destination);
  print("$source -> $destination");
  towerOfHanoi(n - 1, source: helper, destination: destination, helper: source);
}

void main() {
  towerOfHanoi(3, source: "A", destination: "C", helper: "B");
}
