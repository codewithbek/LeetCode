//* 2744. Find Maximum Number of String Pairs

//? Using Set more faster

int maximumNumberOfStringPairs(List<String> words) {
  Set<String> usedWords = {};
  int count = 0;

  for (var word in words) {
    String reversedString = word.split('').reversed.join('');

    if (usedWords.contains(reversedString)) {
      count++;
      usedWords.remove(reversedString);
    } else {
      usedWords.add(word);
    }
  }

  return count;
}

//! Using map
// int maximumNumberOfStringPairs(List<String> words) {
//   Map<String, String> stringMap = {};
//   int count = 0;

//   for (var i = 0; i < words.length; i++) {
//     String e = words[i];
//     String reversedString = e.split('').reversed.join('');

//     if (stringMap.containsValue(reversedString)) {
//       count++;
//       stringMap.remove(reversedString);
//     } else {
//       stringMap[reversedString] = e;
//     }
//   }

//   return count;
// }

//! Using two for loop
// int maximumNumberOfStringPairs(List<String> words) {
//   int count = 0;

//   for (var i = 0; i < words.length; i++) {
//     for (var j = i + 1; j < words.length; j++) {
//       if (words[i] == words[j].split('').reversed.join()) {
//         count++;
//       }
//     }
//   }

//   return count;
// }

