// ? 326. Power of Three
bool isPowerOfThree(int n) {
  if (n <= 0) {
    return false;
  } else {
    while (n % 3 == 0) {
      n ~/= 3;
    }
    return n == 1;
  }
}
