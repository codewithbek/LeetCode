// 1. Two Sum  #Easy

class Solution1 {
  List<int> twoSum(List<int> nums, int target) {
    Map<int?, int> map = {};
    for (int i = 0; i < nums.length; i++) {
      int? complement = target - nums[i];
      if (map.containsKey(complement)) {
        return [map[complement]!, i];
      }
      map[nums[i]] = i;
    }
    return [];
  }
}

