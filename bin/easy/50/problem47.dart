//* 2215. Find the Difference of Two Arrays
// List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
//   List<int> result1 = [];
//   List<int> result2 = [];

//   Set<int> set1 = Set.from(nums1);
//   Set<int> set2 = Set.from(nums2);

//   for (var n1 in set1) {
//     if (!set2.contains(n1)) {
//       result1.add(n1);
//     }
//   }
//   for (var n2 in set2) {
//     if (!set1.contains(n2)) {
//       result2.add(n2);
//     }
//   }

//   return [result1, result2];
// }

//! Short way

// List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
//   List<int> result1 = [];
//   List<int> result2 = [];

//   Set<int> set1 = Set.from(nums1);
//   Set<int> set2 = Set.from(nums2);

//   result1 = set1.difference(set2).toList();
//   result2 = set2.difference(set1).toList();
//   return [result1, result2];
// }

//? Shortest way

// List<List<int>> findDifference(List<int> nums1, List<int> nums2) => <List<int>>[
//       nums1.where((n) => !nums2.contains(n)).toSet().toList(),
//       nums2.where((n) => !nums1.contains(n)).toSet().toList()
//     ];

//! More optimized solution

import 'dart:collection';

List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
  HashSet<int> hashSet1 = HashSet.from(nums1);
  HashSet<int> hashSet2 = HashSet.from(nums2);
  HashSet<int> result1 = HashSet<int>.from(hashSet1)..removeAll(hashSet2);
  HashSet<int> result2 = HashSet<int>.from(hashSet2)..removeAll(hashSet1);
  return [result1.toList(), result2.toList()];
}
