// Exercise 6: Comparison Operators
// Objective: Use comparison operators to evaluate conditions.
// Instructions:
// - Accept two numbers and print a string indicating if they are equal or which one of them is greater.

import 'dart:io';

void main() {
  int firstNumber = int.parse(stdin.readLineSync()!);
  int secondNumber = int.parse(stdin.readLineSync()!);

  bool isFirstNumberGratter = firstNumber > secondNumber;
  bool isFirstNumberEqualSecondNumber = firstNumber == secondNumber;

  if (isFirstNumberGratter) {
    print("First number is Grader");
  } else if (isFirstNumberEqualSecondNumber) {
    print("Are Equal");
  } else {
    print("Second number is Grader");
  }
}
