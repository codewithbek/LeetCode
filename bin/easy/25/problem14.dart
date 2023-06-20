//? 258. Add Digits
int addDigits(int n) {
  if (n < 10) {
    return n;
  } else {
    int sum = 0;
    String a = n.toString();

    for (var i = 0; i < a.length; i++) {
      sum += int.parse(a[i]);
    }
    return addDigits(sum);
  }
}
