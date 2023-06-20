// * 342. Power of Four
bool isPowerOfFour(int n) {
  if (n < 4) {
    return false;
  } else if (n == 4) {
    return true;
  }
  return n ~/ 4 == n / 4 ? isPowerOfFour(n ~/ 4) : false;
}
