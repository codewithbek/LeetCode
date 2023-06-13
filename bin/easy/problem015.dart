// ?231. Power of Two

bool isPowerOfTwo(int n) => n <= 0 ? false : (n & (n - 1)) == 0;

