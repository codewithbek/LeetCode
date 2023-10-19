//* 504. Base 7

String convertToBase7(int n) {
  if (n == 0) {
    return '0';
  }
  String result = '';
  bool isNegative = n < 0;
  n = n.abs();
  while (n > 0) {
    int remainder = n % 7;
    n = n ~/ 7;
    result = (remainder.toString() + result);
  }
  if (isNegative) {
    result = '-$result';
  }
  return result;
}
