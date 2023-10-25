//* 234. Palindrome Linked List

class Node {
  Node(this.data);
  late int data;
  Node? next;
}

bool isPalindrome(Node? head) {
  final values = <int>[];
  while (head != null) {
    values.add(head.data);
    head = head.next;
  }

  return values.join('') == values.reversed.join('');
}

