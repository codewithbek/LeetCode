// *557. Reverse Words in a String III
// String reverseWords(String s) =>
//     s.split('').reversed.join().split(' ').reversed.join(' ');
String reverseWords(String s) => s.split(' ').map((word) => word.split('').reversed.join()).join(' ');
