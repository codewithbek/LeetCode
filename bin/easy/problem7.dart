// 349. Intersection of Two Arrays

List<int> intersection(List<int> nums1, List<int> nums2) {
    Set<int> newNums1 = nums1.toSet();
    Set<int> newNum2 = nums2.toSet();
    return newNums1.intersection(newNum2).toList();
  }