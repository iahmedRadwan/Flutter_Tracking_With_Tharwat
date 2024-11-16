// Exercise 3: Conditional Statements
// Write a program that takes an integer input and checks if it's even or odd. Print "Even" if the number
// is even and "Odd" otherwise.
// Goal: Learn how to use if-else and modulo operator.

import 'dart:io';

void main() {
  stdout.write("Please, Enter the number : ");
  int userInputNumber = int.parse(stdin.readLineSync()!);
  bool isEvenNumber = userInputNumber % 2 == 0;
  if (isEvenNumber) {
    print("The number is Even");
  } else {
    print("The number is Odd");
  }
}
