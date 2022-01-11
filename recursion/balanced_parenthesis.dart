/// Generate balanced Parenthesis
/// For input = 3
/// Output - ((())), ()()(), (()())(), ()(()),(()())

void balancedParenthesis(int open, int close, String output) {
  if (open == 0 && close == 0) {
    print(output);
    return;
  }

  if (open == 0) {
    balancedParenthesis(open, close - 1, output + ")");
    return;
  }

  if (open == close) {
    balancedParenthesis(open - 1, close, output + "(");
    return;
  }

  balancedParenthesis(open - 1, close, output + "(");
  balancedParenthesis(open, close - 1, output + ")");
}

void main() {
  balancedParenthesis(3, 3, "");
}
