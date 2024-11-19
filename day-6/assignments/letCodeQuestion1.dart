void main() {
  print(Solution().containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]));
}

class Solution {
  /// Error Time Limit Exceeded
  // bool containsDuplicate(List<int> nums) {
  //   List<int> filteredNums = [...nums];
  //   bool isNumContainsDuplicate = false;
  //   for (int i = 0; i < nums.length; i++) {
  //     filteredNums.remove(nums[i]);
  //     if (filteredNums.contains(nums[i])) {
  //       isNumContainsDuplicate = true;
  //       break;
  //     }
  //   }
  //   return isNumContainsDuplicate;
  // }

  bool containsDuplicate(List<int> nums) {
    bool isNumContainsDuplicate = false;
    nums.sort();
    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] == nums[i + 1]) {
        isNumContainsDuplicate = true;
        break;
      }
    }
    return isNumContainsDuplicate;
  }
}
