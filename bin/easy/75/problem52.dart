//? Percentage of Letter in String

int percentageLetter(String s, String letter) {
  if (s.contains(letter)) {
    int count = 0;
    for (var e in s.split('')) {
      if (e == letter) {
        count++;
      }
    }
    return (count / s.length * 100).toInt();
  }
  return 0;
}
