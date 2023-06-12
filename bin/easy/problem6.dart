// 217. Contains Duplicate
// Given an integer array nums, return true if any value appears at least twice in the array,
// and return false if every element is distinct.
bool containsDuplicate(List<int> nums) {
  // Map m = <int, bool>{};
  // for (var i in nums) {
  //   if (m[i] == true) {
  //     return true;
  //   }
  //   m[i] = true;
  // }
  // return false;
  // for (var i = 0; i < nums.length; i++) {
  //   for (var j = i + 1; j < nums.length; j++) {
  //     if (nums[i] == nums[j]) {
  //       return true;
  //     }
  //   }
  // }
  int length1 = nums.toSet().length;
  int length2 = nums.length;
  return length1 != length2 ? true : false;
}
