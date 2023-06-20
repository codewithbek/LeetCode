// * 268. Missing Number

int missingNumber(List<int> nums) {
  int missing = nums.length;
  for (var i = 0; i < nums.length; i++) {
    missing = missing ^ i ^ nums[i];
  }

  return missing;
}
