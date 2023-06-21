// * 989. Add to Array-Form of Integer

List<int> addToArrayForm(List<int> nums, int k) {
    List<int> result = [];

  String t = '';
  int sum = 0;
  for (var n in nums) {
    t += n.toString();
  }
  sum = int.parse(t) + k;

  print(t);
  sum.toString().split('').forEach((element) {
    result.add(int.parse(element));
  });
  return result;
}

class Solution {
  List<int> addToArrayForm(List<int> nums, int k) {
    List<int> result = [];
    int carry = 0;
    int i = nums.length - 1;

    while (i >= 0 || k > 0 || carry > 0) {
      int num = i >= 0 ? nums[i] : 0;
      int sum = num + k % 10 + carry;
      result.insert(0, sum % 10);
      carry = sum ~/ 10;
      i--;
      k ~/= 10;
    }

    return result;
  }
}

