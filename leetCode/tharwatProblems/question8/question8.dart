void main() {
  print(Solution().singleNumber([6, 5, 9, 5, 6]));
}

class Solution {
  int singleNumber(List<int> nums) {
    Set<int> visitedNumber = {};
    for (int i = 0; i < nums.length; i++) {
      if (!visitedNumber.contains(nums[i])) {
        visitedNumber.add(nums[i]);
      } else if (visitedNumber.contains(nums[i])) {
        visitedNumber.remove(nums[i]);
      }
    }
    return visitedNumber.first;
  }
}
