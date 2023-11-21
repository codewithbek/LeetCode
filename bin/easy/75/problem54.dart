//! 2843. Count Symmetric Integers

int countSymmetricIntegers(int low, int high) {
  int count = 0;

  for (int num = low; num <= high; num++) {
    if (isSymmetric(num)) {
      count++;
    }
  }

  return count;
}

bool isSymmetric(int num) {
  String numStr = num.toString();
  int length = numStr.length;

  if (length % 2 != 0) {
    return false;
  }

  int halfLength = length ~/ 2;
  int firstHalfSum = 0;
  int secondHalfSum = 0;

  for (int i = 0; i < halfLength; i++) {
    firstHalfSum += int.parse(numStr[i]);
    secondHalfSum += int.parse(numStr[length - 1 - i]);
  }

  return firstHalfSum == secondHalfSum;
}
