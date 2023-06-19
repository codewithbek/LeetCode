// * 14. Longest Common Prefix

String longestCommonPrefix(List<String> strs) {
  if (strs.isEmpty) {
    return '';
  }

  String firstString = strs[0];

  for (int i = 0; i < firstString.length; i++) {
    String currentChar = firstString[i];

    for (int j = 1; j < strs.length; j++) {
      if (i >= strs[j].length || strs[j][i] != currentChar) {
        return firstString.substring(0, i);
      }
    }
  }

  return firstString;
}

// String longestCommonPrefix(List<String> strs) {
//   if (strs.isEmpty) {
//     return '';
//   }
//   if (strs.length == 1) {
//     return strs[0];
//   }
//   String prefix = strs[0];
//   for (var i = 1; i < strs.length; i++) {
//     while (!strs[i].startsWith(prefix)) {
//       prefix = prefix.substring(0, prefix.length - 1);
//       if (prefix.isEmpty) {
//         return '';
//       }
//     }
//   }
//   return prefix;
// }
