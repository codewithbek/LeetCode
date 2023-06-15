import 'easy/problem020.dart';

void main() {
  List<int> nums1 = [1, 2, 2, 1];
  List<int> nums2 = [2, 2];
  List<int> intersection = intersect(nums1, nums2);
  print(intersection); // Output: [2, 2]

  nums1 = [4, 9, 5];
  nums2 = [9, 4, 9, 8, 4];
  intersection = intersect(nums1, nums2);
  print(intersection); // Output: [4, 9]
}
