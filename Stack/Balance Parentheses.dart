 //challenge 2


bool isBalanced(String input) {
  List<String> stack = [];

  for (int i = 0; i < input.length; i++) {
    String char = input[i];

    if (char == '(') {
      stack.add(char); 
    } else if (char == ')') {
      if (stack.isEmpty) {
        return false; 
      }
      stack.removeLast();
    }
  }

  return stack.isEmpty;
}
void main() {
  print(isBalanced("(hello(world))"));  
  print(isBalanced(")(()"));
  print(isBalanced("()"));  
}
