/// Generate N bit binary number where no of 1s >= 0s
/// GeeksForGeeks Issue:
/// https://practice.geeksforgeeks.org/problems/print-n-bit-binary-numbers-having-more-1s-than-0s0252/1
void solve(int n, int ones, int zeros, String output) {
  if (n == 0) {
    print(output);
    return;
  }

  solve(n - 1, ones + 1, zeros, output + "1");
  if (ones > zeros) {
    solve(n - 1, ones, zeros + 1, output + "0");
  }
}

void main() {
  var n = 3;
  solve(n, 0, 0, "");
}
