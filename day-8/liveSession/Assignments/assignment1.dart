// 1. Functions, Exception Handling, and Loops
// Write a program that:
// - Defines a function `divideNumbers(int a, int b)` that:
// - Tries to divide `a` by `b`.
// - Throws an exception if `b` is zero with the message "Cannot divide by zero!".
// - Catches the exception and prints the error message.
// - Returns the result if no exception is thrown.
// - Calls the function with different inputs and prints the results.

import '../../../day-3/Assignments/assignment1.dart';

void main() {
  print(divisionTwoNumber(firstNumber: 10, secondNumber: 20));
  print(divisionTwoNumber(firstNumber: 10, secondNumber: 10));
  print(divisionTwoNumber(firstNumber: 10, secondNumber: 0));
}

num divideNumbers({required num number1, required num number2}) {
  try {
    return number1 / number2;
  } on IntegerDivisionByZeroException catch (e) {
    // TODO
    print("Cannot divide by zero!");
    throw Exception("Cannot divide by zero!");
  }
}
