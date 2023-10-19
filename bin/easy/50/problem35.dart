//* 26. Remove Duplicates from Sorted Array

int removeDuplicates(List<int> nums) {
  if (nums.isEmpty) return 0;
  int s = 0;
  int f = 0;
  while (f < nums.length) {
    if (nums[f] != nums[s]) {
      s++;
      nums[s] = nums[f];
    }
    f++;
  }
  return s + 1;
}
