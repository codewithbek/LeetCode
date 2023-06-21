// * 989. Add to Array-Form of Integer

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

