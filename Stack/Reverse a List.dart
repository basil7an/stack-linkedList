void reverseList(List<dynamic> inputList) {
  List stack = [];

  for (var item in inputList) {
    stack.add(item);
  }

  while (stack.isNotEmpty) {
    
    print(stack.removeLast());
  }
}

void main() {
  List ex1 = [1, 2, 3, 4, 5];
  List ex2 = ['Basil', 'Ahmed', "Mahmoud"];
  List ex3 = ["Mohaned", 1, 5, "Nothing"];
  reverseList(ex1);
  print('\n');

  reverseList(ex2);
  print('\n');

  reverseList(ex3);
}
