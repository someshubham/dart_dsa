/// Print Subset of a String
/// if ab is the string then subset of ab ->
/// {"","a","b","ab"}
void subset(String input, String output) {
  if (input.isEmpty) {
    print(output);
    return;
  }

  // Choosing the first letter
  subset(input.substring(1), output + input[0]);
  // Not Choosing the first letter
  subset(input.substring(1), output);
}

void main() {
  subset("ab", "");
}
