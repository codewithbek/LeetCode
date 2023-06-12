// 35. Search Insert Position

// int searchInsert(List<int> nums, int target) {
//   int index = 0;
//   for (var i = 0; i < nums.length; i++) {
//     if (target == nums[i] || target + 1 == nums[i] || target != nums[i]) {
//       index = i;
//       return index;
//     } else if (target - 1 == nums[i]) {
//       index = i + 1;
//       return index;
//     }
//   }
//   return index;
// }

int searchInsert(List<int> nums, int target) {
  int result = nums.indexOf(target);
  if (result != -1) return result;
  nums.add(target);
  nums.sort();
  result = nums.indexOf(target);
  return result;
}
