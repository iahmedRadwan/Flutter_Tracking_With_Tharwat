// Example 1:

// Input: prices = [10,1,5,6,7,1]

// Output: 6
// Explanation: Buy prices[1] and sell prices[4], profit = 7 - 1 = 6.

// Example 2:

// Input: prices = [10,8,7,5,2]

// Output: 0
// Explanation: No profitable transactions can be made, thus the max profit is 0.

void main() {
  print(Solution().maxProfit([1, 2]));
}

class Solution {
  int maxProfit(List<int> prices) {
    if (prices.length == 1) {
      return 0;
    }
    int leftValue = prices[0], rightValue = prices[0];
    int maxProfit = 0;
    for (int i = 0; i < prices.length - 1; i++) {
      if (rightValue > leftValue) {
        maxProfit = rightValue - leftValue;
        rightValue = prices[i + 1];
      } else if (leftValue >= rightValue) {
        leftValue = rightValue;
        rightValue = prices[i + 1];
      }
    }
    return maxProfit;
  }
}
