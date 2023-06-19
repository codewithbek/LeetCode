// ? 350. Intersection of Two Arrays II
List<int> intersect(List<int> nums1, List<int> nums2) {
  if (nums1.isEmpty || nums2.isEmpty) {
    return [];
  }

  Map<int, int> freqMap = {};

  // Count the frequency of elements in nums1
  for (int e in nums1) {
    print("e $e");
    freqMap[e] = (freqMap[e] ?? 0) + 1;
    print("freqMap=> ${freqMap[e]}");
  }

  List<int> result = [];

  // Find the intersection in nums2
  for (int e in nums2) {
    if (freqMap.containsKey(e) && freqMap[e]! > 0) {
      result.add(e);
      freqMap[e] = freqMap[e]! - 1;
    }
  }

  return result;
}
