// *541. Reverse String II

String reverseStr(String s, int k) {
  List<String> charList = s.split('');

  void reverseCharacters(int start, int end) {
    while (start < end) {
      String temp = charList[start];
      charList[start] = charList[end];
      charList[end] = temp;
      start++;
      end--;
    }
  }

  for (var i = 0; i < charList.length; i += 2 * k) {
    int start = i;
    int end = (i + k - 1 < charList.length) ? i + k - 1 : charList.length - 1;
    reverseCharacters(start, end);
  }
  

  return charList.join('');
}
