// Simple Calculator
// Topic: Arithmetic operators
// Exercise: Build a program that takes two numbers as input and performs addition, subtraction, multiplication, and
// division. Display each result to the console.

import 'dart:io';

void main() {
  stdout.write("Enter the first number : ");
  num firstUserInputNumber = num.parse(stdin.readLineSync() ?? "0");
  stdout.write("Enter the second number : ");
  num secondUserInputNumber = num.parse(stdin.readLineSync() ?? "0");

  stdout.write("Enter the Operation (+,-,/,*) : ");
  String operation = stdin.readLineSync()![0];
  switch (operation) {
    case '*':
      print(firstUserInputNumber * secondUserInputNumber);
      break;
    case '-':
      print(firstUserInputNumber - secondUserInputNumber);
      break;
    case '+':
      print(firstUserInputNumber + secondUserInputNumber);
      break;
    case '/':
      if (secondUserInputNumber == 0) {
        print("Invalid");
      } else {
        print(firstUserInputNumber / secondUserInputNumber);
      }

      break;

    default:
      print("Please Enter a valid operation");
  }
}
