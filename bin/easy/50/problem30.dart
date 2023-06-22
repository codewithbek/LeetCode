//* 202. Happy Number

bool isHappy(int n) {
  Set<int> encounteredNumbers = {};
  while (true) {
    int nextNumber = sumOfSquares(n);

    if (nextNumber == 1) {
      return true;
    }

    if (encounteredNumbers.contains(nextNumber)) {
      return false;
    }
    encounteredNumbers.add(nextNumber);
    n = nextNumber;
  }
}

int sumOfSquares(int n) {
  int sum = 0;
  while (n > 0) {
    int digit = n % 10;
    sum += digit * digit;
    n ~/= 10;
  }
  return sum;
}
