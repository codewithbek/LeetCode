//! 1408. String Matching in an Array


List<String> stringMatching(List<String> words) {
  List<String> result = [];

  for (int i = 0; i < words.length; i++) {
    for (int j = 0; j < words.length; j++) {
      if (i != j && words[j].contains(words[i])) {
        result.add(words[i]);
        break;
      }
    }
  }

  return result;
}
