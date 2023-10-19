//* 844. Backspace String Compare

bool backspaceCompare(String s, String t) {
  return processString(s) == processString(t);
}

String processString(String input) {
  List<String> result = [];

  for (int i = 0; i < input.length; i++) {
    if (input[i] != '#') {
      result.add(input[i]);
    } else if (result.isNotEmpty) {
      result.removeLast();
    }
  }

  return result.join();
}
