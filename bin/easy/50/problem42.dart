//* 389. Find the Difference
String findTheDifference(String s, String t) {
  int result = 0;
  for (var i in s.runes) {
    print('Unicode code point: $i, Character: ${String.fromCharCode(i)}');
    result ^= i;
  }
  for (var j in t.runes) {
    result ^= j;
  }
  return String.fromCharCode(result);
}
  // String string = 'Hello, 😊!';

  // // Using runes to iterate over the characters in the string
  // for (int rune in string.runes) {
  //   print('Unicode code point: $rune, Character: ${String.fromCharCode(rune)}');
  // }

