//* 2828. Check if a String Is an Acronym of Words

// Berilga words listini ichidagi har bitta so'zni birinchi harfini s ga teng ekanligini tekshirish.

//? 1. words.length != s.length ga ==> false;
//? 2. words listni for bilan aylanib har bitta so'zni
//? biringchi harfini s ni birinchi harfiga teng ekanligi tekshirish
//? words[i].first == s.first ==> true aks holda false for loopidan break qilib false qaytarish

bool isAcronym(List<String> words, String s) {
  if (words.length != s.length) {
    return false;
  }
  for (var i = 0; i < words.length; i++) {
    if (words[i][0] != s[i]) {
      return false;
    }
  }
  return true;
}
