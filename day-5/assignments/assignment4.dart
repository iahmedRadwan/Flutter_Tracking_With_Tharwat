// Exercise 4: Loops
// Write a Dart program to print the first 10 numbers in the Fibonacci sequence.
// Goal: Practice loops and basic algorithmic thinking.

// which are 0,1,1,2,3,5,8,...
// each number equal to previous two number

import 'dart:io';

void main() {
  int firstPrevious = 0,
      secondPrevious = 1,
      sumOfTwoPrevious = firstPrevious + secondPrevious;
  for (int i = 0; i < 10; i++) {
    if (i == 0 || i == 1) {
      stdout.write("$i ,");
    } else {
      sumOfTwoPrevious = firstPrevious + secondPrevious;
      stdout.write("$sumOfTwoPrevious ,");
      firstPrevious = secondPrevious;
      secondPrevious = sumOfTwoPrevious;
    }
  }
}
