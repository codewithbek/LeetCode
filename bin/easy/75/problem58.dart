//! 387. First Unique Character in a String

int firstUniqChar(String s) {
  Map<String, int> charCount = {};

  for (var i = 0; i < s.length; i++) {
    String currentChar = s[i];
    charCount[currentChar] =
        charCount.containsKey(currentChar) ? charCount[currentChar]! + 1 : 1;
  }
  for (int i = 0; i < s.length; i++) {
    if (charCount[s[i]] == 1) {
      return i;
    }
  }
  return -1;
}
