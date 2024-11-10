// 1. Basic Calculator:
// Create a Dart program that takes two numbers as input and performs addition, subtraction,
// multiplication, and division using variables, arithmetic operators, and functions. Also, include
// optional parameters for different operations (e.g., addition of multiple numbers).
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
      print(multiplicationTwoNumber(
          firstNumber: firstUserInputNumber,
          secondNumber: secondUserInputNumber));
      break;
    case '-':
      print(subtractionTwoNumber(
          firstNumber: firstUserInputNumber,
          secondNumber: secondUserInputNumber));
      break;
    case '+':
      print(additionTwoNumber(
          firstNumber: firstUserInputNumber,
          secondNumber: secondUserInputNumber));
      break;
    case '/':
      print(divisionTwoNumber(
          firstNumber: firstUserInputNumber,
          secondNumber: secondUserInputNumber));
      break;

    default:
      print("Please Enter a valid operation");
  }
}

num additionTwoNumber({required num firstNumber, required num secondNumber}) {
  return firstNumber + secondNumber;
}

num subtractionTwoNumber(
    {required num firstNumber, required num secondNumber}) {
  return firstNumber - secondNumber;
}

num multiplicationTwoNumber(
    {required num firstNumber, required num secondNumber}) {
  return firstNumber * secondNumber;
}

num divisionTwoNumber({required num firstNumber, required num secondNumber}) {
  if (secondNumber == 0) {
    return 0;
  }
  return firstNumber / secondNumber;
}
