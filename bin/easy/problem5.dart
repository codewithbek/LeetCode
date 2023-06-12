// 136. Single Number
// int singleNumber(List<int> nums) {
//   for (var i in nums) {
//     final item = nums.indexOf(i);
//     if (item == nums.lastIndexOf(i)) {
//       return nums[item];
//     }
//   }
//   return -1;
// }

int singleNumber(List<int> nums) =>
    2 * nums.toSet().reduce((a, b) => a + b) - nums.reduce((a, b) => a + b);

// 2 * nums.toSet().reduce((a, b) => a + b)=> 2* (2+1) = 6
// nums.reduce((a, b) => a + b) => 2+2+1= 5 
