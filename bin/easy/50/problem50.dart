//* 1961. Check If String Is a Prefix of Array

bool isPrefixString(String s, List<String> words) {
  String prefix = '';

  for (var word in words) {
    prefix += word;
    if (prefix == s) {
      return true;
    } else if (!(s.startsWith(prefix))) {
      return false;
    }
  }

  return false;
}
