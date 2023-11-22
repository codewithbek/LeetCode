//! 1748. Sum of Unique Elements

int sumOfUnique(List<int> nums) {
  Map<int, int> myMap = {};
  for (var e in nums) {
    myMap[e] = myMap.containsKey(e) ? myMap[e]! + 1 : 1;
  }
  int sum = 0;
  for (var e in nums) {
    if (myMap[e] == 1) {
      sum += e;
    }
  }
  return sum;
}
