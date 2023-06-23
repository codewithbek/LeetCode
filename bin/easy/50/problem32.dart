// * 242. Valid Anagram

bool isAnagram(String s, String t) {
  if (s.length != t.length) {
    return false;
  }
  List<int> count = List<int>.filled(26, 0);
  for (var i = 0; i < s.length; i++) {
    count[s.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
    count[t.codeUnitAt(i) - 'a'.codeUnitAt(0)]--;
  }
  for (var e in count) {
    if (e != 0) {
      return false;
    }
  }
  return true;
}
