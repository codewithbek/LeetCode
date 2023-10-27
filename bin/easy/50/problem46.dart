//* 2108. Find First Palindromic String in the Array

// String firstPalindrome(List<String> words) {
//   if (words.isNotEmpty) {
//     String palindrome = words.firstWhere(
//         (element) => element == element.split('').reversed.join(),
//         orElse: () => '');
//     return palindrome;
//   }
//   return '';
// }

//! Optimezed solution

String firstPalindrome(List<String> words) {
  for (var word in words) {
    if (isPalindrome(word)) {
      return word;
    }
  }
  return '';
}

bool isPalindrome(String word) {
  int left = 0;
  int right = word.length - 1;
  while (left < right) {
    if (word[left] != word[right]) {
      return false;
    }
    left++;
    right--;
  }
  return true;
}
