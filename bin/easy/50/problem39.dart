// * 771. Jewels and Stones

import 'dart:collection';

int numJewelsInStones(String jewels, String stones) {
  int count = 0;
  for (var j in jewels.split('')) {
    for (var s in stones.split('')) {
      if (j == s) {
        count++;
      }
    }
  }

  return count;
}
// int numJewelsInStones(String jewels, String stones) {
//   var jewelHash = HashSet<String>();
//   int count = 0;

//   for (var j in jewels.split('')) {
//     jewelHash.add(j);
//   }

//   for (var stone in stones.split('')) {
//     if (jewelHash.contains(stone)) {
//       count++;
//     }
//   }

//   return count;
// }
