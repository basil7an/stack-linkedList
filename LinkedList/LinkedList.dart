import 'node.dart';

class LinkedList {
  Node? head;

  void append(var data) {
    final newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      var current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }
 //challenge 3
  void printInReverse() {
    void printReverse(Node? node) {
      if (node == null) return;
      printReverse(node.next);
      print(node.data);
    }

    printReverse(head);
  }

   //challenge 4
  void findMiddleNode() {
    var slow = head;
    var fast = head;

    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
    }

    if (slow != null) {
      print("Middle node data: ${slow.data}");
    } else {
      print("The list is empty.");
    }
  }
  //challenge 5
  void reverse() {
    Node? prev = null;
    var current = head;

    while (current != null) {
      var next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }

    head = prev;
  }
  
  //challenge 6
  void removeAllOccurrences(var value) { 
    while (head != null && head!.data == value) {
      head = head!.next;
    }
 
    var current = head;
    while (current != null && current.next != null) {
      if (current.next!.data == value) {
        current.next = current.next!.next;
      } else {
        current = current.next;
      }
    }
  }
 
  void printList() {
    var current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
