/// Permutation with Space
/// For input - abc it should print
/// a_b_c , a_bc , ab_c and abc
void addSpaceInBetween(String input, String output) {
  /// We are checking for last character
  /// because we dont want to add space after
  /// the last character
  if (input.length == 1) {
    print(output+input);
    return;
  }

  addSpaceInBetween(input.substring(1), output + input[0] + " ");
  addSpaceInBetween(input.substring(1), output + input[0]);
}

void main() {
  addSpaceInBetween("abc", "");
}
