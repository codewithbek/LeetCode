// * 125. Valid Palindrome

bool isPalindrome(String s) {
  if (s.isEmpty) {
    return true;
  }

  s = s.toLowerCase();

  String modifiedString = '';
  RegExp alphanumeric = RegExp(r'[a-zA-Z0-9]');

  for (int i = 0; i < s.length; i++) {
    if (alphanumeric.hasMatch(s[i])) {
      modifiedString += s[i];
    }
  }

  String reversedString = modifiedString.split('').reversed.join('');

  return modifiedString == reversedString;
}


