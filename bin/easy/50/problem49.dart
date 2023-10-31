// * 1822. Sign of the Product of an Array
int arraySign(List<int> nums) {
  int countNegatives = 0;
  bool hasZero = false;
  for (var n in nums) {
    if (n < 0) {
      countNegatives++;
    } else if (n == 0) {
      hasZero = true;
    }
  }
  if (hasZero) {
    return 0;
  } else {
    return countNegatives % 2 == 0 ? 1 : -1;
  }
}
