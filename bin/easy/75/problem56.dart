//! 2716. Minimize String Length
int minimizedStringLength(String s) {
  Set<String> t = {};
  t.addAll(s.split(''));
  return t.length;
}


/*class Solution {
  int minimizedStringLength(String s) {
    // Step 1: Keep track of the last occurrence index for each character
    Map<String, int> lastOccurrence = {};

    for (int i = 0; i < s.length; i++) {
      lastOccurrence[s[i]] = i;
    }

    // Step 2: Iterate through unique characters and perform the operation
    Set<String> uniqueChars = lastOccurrence.keys.toSet();
    int minLength = s.length;

    for (String currentChar in uniqueChars) {
      int currentIndex = lastOccurrence[currentChar]!;
      int leftOccurrence = findClosestOccurrence(
          s, lastOccurrence, currentChar, currentIndex, true);
      int rightOccurrence = findClosestOccurrence(
          s, lastOccurrence, currentChar, currentIndex, false);

      // Delete the occurrences
      String modifiedString =
          s.substring(0, leftOccurrence) + s.substring(rightOccurrence + 1);

      // Update the minimum length
      minLength = minLength < modifiedString.length ? minLength : modifiedString.length;
    }

    // Step 3: Return the minimum length
    return minLength;
  }

  // Helper function to find the closest occurrence index to the left or right
  int findClosestOccurrence(String s, Map<String, int> lastOccurrence,
      String target, int currentIndex, bool toLeft) {
    int step = toLeft ? -1 : 1;
    int index = currentIndex + step;

    while (index >= 0 && index < s.length) {
      if (s[index] == target) {
        return index;
      }

      index += step;
    }

    return toLeft ? -1 : s.length;
  }
}*/

