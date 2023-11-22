//!2696. Minimum String Length After Removing Substrings

int minLength(String s) {
  List<String> stack = [];

  for (int i = 0; i < s.length; i++) {
    String char = s[i];
    if (stack.isNotEmpty &&
        (char == 'B' && stack.last == 'A' ||
            char == 'D' && stack.last == 'C')) {
      stack.removeLast();
    } else {
      stack.add(char);
    }
  }

  return stack.length;
}
