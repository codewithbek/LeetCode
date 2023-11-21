//? Reverse Prefix of Word

String reversePrefix(String word, String ch) {
  if (!word.contains(ch)) {
    return word;
  }
  String reversed = '';
  for (var i = 0; i < word.length; i++) {
    reversed += word[i];
    if (word[i] == ch) {
      break;
    }
  }
  reversed = reversed.split('').reversed.join();

  return reversed + word.substring(word.indexOf(ch) + 1);
}
