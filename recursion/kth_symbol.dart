import 'dart:math';

/// Find kth symbol of the grammar
/// Problem Description on leetcode
/// leetcode link: https://leetcode.com/problems/k-th-symbol-in-grammar/
int kthGrammar(int n, int k) {
  if (n == 1 && k == 1) {
    return 0;
  }
  int mid = pow(2, n - 1) ~/ 2;
  return (k > mid) ? 1 - kthGrammar(n - 1, k - mid) : kthGrammar(n - 1, k);
}

void main() {
  print(kthGrammar(4, 8));
}
