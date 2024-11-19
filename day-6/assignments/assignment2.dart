// Write a function `processNumbers` that:
// - Accepts a list of integers.
// - Filters out numbers less than 5.
// - Squares each remaining number.
// - Returns the sum of the squared numbers.
// Use the function with the list `[2, 4, 6, 8, 10]` and print the result.
// Goal: Learn to work with collections, loops, and filtering conditions.

import 'dart:math';

void main() {
  List<int> numberList = [2, 4, 6, 8, 10];
  int sumOfSquaredNumberMoreThan5 = processNumbers(numbersList: numberList);
  print(sumOfSquaredNumberMoreThan5);
}

int processNumbers({required List<int> numbersList}) {
  int sumOfSquaredRemainingNumber = 0;
  List<int> filteredList = [];
  numbersList.forEach((item) {
    if (item > 5) {
      filteredList.add(item);
    }
  });
  filteredList.forEach((item) {
    sumOfSquaredRemainingNumber += pow(item, 2).toInt();
  });

  return sumOfSquaredRemainingNumber;
}
