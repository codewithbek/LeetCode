// ? 350. Intersection of Two Arrays II
List<int> intersect(List<int> nums1, List<int> nums2) {
  if (nums1.isEmpty || nums2.isEmpty) {
    return [];
  }

  Map<int, int> freqMap = {};

  // Count the frequency of elements in nums1
  for (int num in nums1) {
    freqMap[num] = (freqMap[num] ?? 0) + 1;
  }

  List<int> result = [];

  // Find the intersection in nums2
  for (int num in nums2) {
    if (freqMap.containsKey(num) && freqMap[num]! > 0) {
      result.add(num);
      freqMap[num] = freqMap[num]! - 1;
    }
  }

  return result;
}
