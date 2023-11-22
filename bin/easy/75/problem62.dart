//! 1952. Three Divisors
bool isThree(int n) {
  int count = 0;
  for (var i = 1; i <= n; i++) {
    if (n % i == 0) {
      count++;
      if (count > 3) {
        return false;
      }
    }
  }
  return count == 3;
}
