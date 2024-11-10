// 7. Number Check Program:
// Create a program that asks the user to input a number and checks if it's positive, negative, or zero
// using if-else statements.

import 'dart:io';

void main() {
  stdout.write("Please Enter the number : ");
  num userInputNumber = num.parse(stdin.readLineSync()!);
  bool isPositiveNumber = userInputNumber > 0;
  bool isNegativeNumber = userInputNumber < 0;
  if (isPositiveNumber) {
    print("Number is Positive");
  } else if (isNegativeNumber) {
    print("Number is Negative number");
  } else {
    print("Number is zero");
  }
}
