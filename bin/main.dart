import 'easy/25/problem24.dart';

void main() {
  // Create a sample linked list: 1 -> 2 -> 3 -> 4 -> 5
  ListNode head = ListNode(1);
  head.next = ListNode(2);
  head.next!.next = ListNode(3);
  head.next!.next!.next = ListNode(4);
  head.next!.next!.next!.next = ListNode(5);

  // Create an instance of the Solution class
  // Solution solution = Solution();

  // Reverse the linked list
  ListNode? reversedHead = reverseList(head);

  // Print the reversed linked list
  printLinkedList(reversedHead);
}

// Helper function to print the linked list
void printLinkedList(ListNode? head) {
  ListNode? current = head;
  while (current != null) {
    print(current.val);
    current = current.next;
  }
}
