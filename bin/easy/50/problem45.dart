//* 2778. Sum of Squares of Special Elements

int sumOfSquares(List<int> nums) {
  int sum = 0;

  for (var i = 1; i <= nums.length; i++) {
    if (nums.length % i == 0) {
      sum += nums[i - 1] * nums[i - 1];
    }
  }
  return sum;
}
