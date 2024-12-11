// Write an algorithm to determine if a number n is happy.

// A happy number is a number defined by the following process:
// Starting with any positive integer, replace the number by the sum of the squares of its digits.
// Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
// Those numbers for which this process ends in 1 are happy.
// Return true if n is a happy number, and false if not.
// Example 1:

// Input: n = 19
// Output: true
// Explanation:
// 12 + 92 = 82
// 82 + 22 = 68
// 62 + 82 = 100
// 12 + 02 + 02 = 1

void main() {
  print(Solution().isHappy(78));
}

class Solution {
  bool isHappy(int n) {
    int sum;
    List<int> sums = [];

    while (n != 1) {
      sum = 0;

      List<String> seperatedNumber = n.toString().split("");
      List<int> numbers =
          seperatedNumber.map((element) => int.parse(element)).toList();

      for (var num in numbers) {
        sum += num * num;
      }

      if (sums.contains(sum)) {
        return false;
      }
      sums.add(sum);
      n = sum;
    }
    if (n == 1) {
      return true;
    }
    return false;
  }
}
// I/O ==> I -> number , O -> true Or false
// each case n<9 and  != 1 it mean not hapy

/// steps to solve problem
/// 1- i need to seperate number every time
/// 2- get square of each seperated number and added with each other
/// 3- check if number hapy or not
