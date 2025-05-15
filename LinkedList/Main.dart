import 'LinkedList.dart';

void main() {
  final list = LinkedList();
  list.append("Mohamed");
  list.append("Ahmed");
  list.append("Basil");
  list.append("No");
  list.append("GSG");
  list.append("nothing");

  print("Original list:");
  list.printList();

  print("\nChallenge 1: Print in Reverse");
  list.printInReverse();

  print("\nChallenge 2: Find Middle Node");
  list.findMiddleNode();

  print("\nChallenge 3: Reverse List");
  list.reverse();
  list.printList();

  print("\nChallenge 4: Remove all occurrences of an element");
  list.removeAllOccurrences("Basil");
  list.printList();
}
