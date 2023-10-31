//* 2535. Difference Between Element Sum and Digit Sum of an Array
int differenceOfSum(List<int> nums) {
  int sumOfE = 0;
  int sumOfD = 0;
  for (var e in nums) {
    sumOfE += e;
    while (e > 0) {
      sumOfD += e % 10;
      e ~/= 10;
    }
  }

  return (sumOfE - sumOfD).abs();
}
