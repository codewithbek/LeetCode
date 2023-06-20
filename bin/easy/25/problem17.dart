// ? 66. Plus One
// ! First Way
// List<int> plusOne(List<int> digits) {
//   int addOne = 0;
//   List<String> result = [];
//   String sum = '';
//   for (var i = 0; i < digits.length; i++) {
//     sum += digits[i].toString();
//   }
//   addOne = int.parse(sum) + 1;
//   result = addOne.toString().split('');
//   return result.map(int.parse).toList();
// }
// ? Second Way
// List<int> plusOne(List<int> digits) {
//   BigInt addOne = BigInt.parse(digits.join('')) + BigInt.one;
//   List<String> result = addOne.toString().split('');
//   return result.map(int.parse).toList();
// }

//* Best Way

List<int> plusOne(List<int> digits) {
  int carry = 1;
  List<int> result = [];

  for (int i = digits.length - 1; i >= 0; i--) {
    int sum = digits[i] + carry;
    result.insert(0, sum % 10);
    carry = sum ~/ 10;
  }

  if (carry > 0) {
    result.insert(0, carry);
  }

  return result;
}
