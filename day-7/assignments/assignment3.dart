// 3. Null Safety, Functions, and Higher-Order Functions
// Write a function `findLargest(List<int>? numbers)` that:
// - Checks if the input list is null or empty. If so, returns null.
// - Otherwise, finds and returns the largest number in the list using the `reduce` method.
// - Call the function with `[10, 3, 45, 7]` and `null`, and print the results.

import 'dart:math';

void main() {
  print(findLargest([10, 20, 3, 5, 40, 3, 2, 24]));
}

findLargest(List<int>? numbers) {
  int nums = numbers!.reduce((num1, num2) {
    print("$num1 -- $num2");
    return max(num1, num2);
  });
  return nums;
}
