/// Print Number from 1 to N
void printAscending(int n) {
  if (n == 0) return;
  printAscending(n - 1);
  print(n);
}

/// Print number from N to 1
void printDescending(int n) {
  if (n == 0) return;
  print(n);
  printDescending(n - 1);
}
void main() {
  print("Ascending Order");
  printAscending(7);
  print("Descending Order");
  printDescending(7);
}

