// 2. Add Two Numbers
// class Solution3 {
//   List addTwoNumbers(List<int> l1, List<int> l2) {
//     var reverseOrder1 = int.parse(l1.reversed.join(""));
//     var reverseOrder2 = int.parse(l2.reversed.join(""));
//     var sum = reverseOrder1 + reverseOrder2;
//     List<int> result = List.generate(
//         sum.toString().length, (i) => int.parse(sum.toString()[i]));
//     return result;
//   }
// }

//  Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

// class Solution3 {
//   ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
//     var newL1 = [];
//     var newL2 = [];
//     var finalListNode = ListNode();
//     while (l1 != null) {
//       newL1.insert(0, l1.val);
//       l1 = l1.next;
//     }
//     while (l2 != null) {
//       newL2.insert(0, l2.val);
//       l2 = l2.next;
//     }

//     final sum = (BigInt.parse(newL1.join('')) + BigInt.parse(newL2.join('')));
//     final reversedSumList = sum.toString().split('').reversed;
//     final nodes = reversedSumList.map((e) => ListNode(int.parse(e))).toList();

//     for (var i = 0; i < nodes.length - 1; i++) {
//       nodes[i].next = nodes[i + 1];
//     }
//     finalListNode = nodes[0];

//     return finalListNode;
//   }
// }

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode? nodeRemainder;
    if (l1 == null && l2 == null) {
      return null;
    }
    if (l1?.next != null) {
      nodeRemainder = l1!.next;
    } else if (l2?.next != null) {
      nodeRemainder = l2!.next;
    }

    int value = (l1?.val ?? 0) + (l2?.val ?? 0);
    int remainder = value ~/ 10;
    value %= 10;

    ListNode node = ListNode();
    node.val = value;
    if (nodeRemainder == null) {
      if (remainder != 0) {
        ListNode lastNode = ListNode();
        lastNode.val = remainder;
        node.next = lastNode;
      }
    } else {
      nodeRemainder.val += remainder;
      node.next = addTwoNumbers(l1?.next, l2?.next);
    }
    return node;
  }
}
