//* 2427. Number of Common Factors

int commonFactors(int a, int b) {
  int smallerNumber = a < b ? a : b;
  int count = 0;
  for (var i = 1; i <= smallerNumber; i++) {
    if (a % i == 0 && b % i == 0) {
      count++;
    }
  }
  return count;
}
