/// Letter case permutation
/// Leetcode problem - https://leetcode.com/problems/letter-case-permutation/
/// For input - a1b2
/// Output - a1b2, a1B2, A1b2, A1B2
void letterCasePermutation(String input, String output) {
  if (input.isEmpty) {
    print(output);
    return;
  }
  String currentInput = input[0];

  /// If numeric then no need to check for anything
  /// No need to process anything
  if (isNumeric(currentInput)) {
    letterCasePermutation(input.substring(1), output + currentInput);
    return;
  }

  /// If the letter is Upper case then lower case it
  /// and visa versa
  if (isUpperCase(currentInput)) {
    letterCasePermutation(
        input.substring(1), output + currentInput.toLowerCase());
  } else {
    letterCasePermutation(
        input.substring(1), output + currentInput.toUpperCase());
  }

  /// Don't change the case of the letter
  letterCasePermutation(input.substring(1), output + currentInput);
}

void main() {
  letterCasePermutation("a1b2", "");
}

bool isNumeric(String input) {
  return double.tryParse(input) != null;
}

bool isUpperCase(String input) {
  return input == input.toUpperCase();
}
