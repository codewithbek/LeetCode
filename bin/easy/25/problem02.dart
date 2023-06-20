//  13. Roman to Integer #easy
class Solution2 {
  int romanToInt(String s) {
    int numerOfRoman = 0;
    Map<String, int> romanNumeralValues = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };
    for (int i = 0; i < s.length; i++) {
      String currentRomanChar = s[i];
      numerOfRoman = numerOfRoman + (romanNumeralValues[currentRomanChar] ?? 0);
      if (i > 0) {
        String prevRomanChar = s[i - 1];
        if ((prevRomanChar == "I" &&
                (currentRomanChar == "V" || currentRomanChar == "X")) ||
            (prevRomanChar == "X" &&
                (currentRomanChar == "L" || currentRomanChar == "C")) ||
            (prevRomanChar == "C" &&
                (currentRomanChar == "D" || currentRomanChar == "M"))) {
          numerOfRoman = (2 * (romanNumeralValues[prevRomanChar] ?? 0));
        }
      }
    }
    return numerOfRoman;
  }
}
