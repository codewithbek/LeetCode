// *263. Ugly Number

bool isUgly(num n) {
  if (n <= 0) return false;

  while (n % 2 == 0) {
    n /= 2;
  }
   while (n % 3 == 0) {
    n /= 3;
  }
  while (n % 5 == 0) {
    n /= 5;
  }
  return n == 1;
}
