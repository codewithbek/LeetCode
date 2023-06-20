// * 206. Reverse Linked List

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
ListNode? reverseList(ListNode? head) {
  if (head == null || head.next == null) return head;

  // Declare currNode = head
  ListNode? currNode = head;
  // Declare prevNode
  ListNode? prevNode;
  // Declare nextNode
  ListNode? nextNode = currNode.next;

  // Loop through list
  while (nextNode != null) {
    // Set nextNode = currNode.next
    nextNode = currNode?.next;
    // Set currNode.next = prevNode
    currNode!.next = prevNode;
    // Set prevNode = currNode
    prevNode = currNode;
    // Set currNode = nextNode
    currNode = nextNode;
  }

  return prevNode;
}
