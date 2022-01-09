/// Permutation with Case Change
/// for input : ab
/// output : ab, Ab, aB and AB
void caseChange(String input, String output) {
  if (input.isEmpty) {
    print(output);
    return;
  }

  caseChange(input.substring(1), output + input[0].toUpperCase());
  caseChange(input.substring(1), output + input[0]);
}

void main() {
  caseChange("ab", "");
}
