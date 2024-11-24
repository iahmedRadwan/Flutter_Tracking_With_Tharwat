class Solution {
  List<int> twoSum(List<int> nums, int target) {
    int minWanted;
    List<int> targetIndexList = [];
    for (int i = 0; i < nums.length; i++) {
      minWanted = target - nums[i];

      if (nums.contains(minWanted) && nums.indexOf(minWanted) != i) {
        targetIndexList = [i, nums.indexOf(minWanted)];
        break;
      }
    }
    return targetIndexList;
  }
}
