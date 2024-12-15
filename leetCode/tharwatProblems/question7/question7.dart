void main() {
  print(Solution().missingNumber([3]));
}

class Solution {
  int missingNumber(List<int> nums) {
    Set<int> rangedNumber = {};
    for (int i = 0; i < nums.length + 1; i++) {
      rangedNumber.add(i);
    }
    int sumOfNumber = nums.reduce((first, second) => first + second);
    int sumOfRangedNumber =
        rangedNumber.reduce((first, second) => first + second);
    return (sumOfRangedNumber - sumOfNumber).abs();
  }
}
