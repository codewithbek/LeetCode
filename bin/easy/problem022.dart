
// * 290. Word Pattern



bool wordPattern(String pattern, String s) {
  List<String> words = s.split(' ');
  if (pattern.length != words.length) {
    return false;
  }
  Map<String, String> patternMap = {};
  Map<String, String> wordMap = {};
  for (var i = 0; i < pattern.length; i++) {
    String char = pattern[i];
    String word = words[i];
    if (patternMap.containsKey(char) && patternMap[char] != word) {
      return false;
    }
    if (wordMap.containsKey(word) && wordMap[word] != char) {
      return false;
    }
    patternMap[char] = word;
    wordMap[word] = char;
  }

  return true;
}
