//* 7. Reverse Integer
int reverse(int x) {
  String reversedString = x.abs().toString().split('').reversed.join();
  int reversedInt = int.parse(reversedString);
  return x.isNegative ? -reversedInt : reversedInt;
}
