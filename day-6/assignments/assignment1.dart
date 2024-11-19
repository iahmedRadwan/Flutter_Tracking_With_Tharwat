// 1. Variables, Functions, and Control Flow
// Write a program that:
// - Prompts the user to input a number.
// - Defines a function `isPrime(int number)` to check if the number is prime.
// - Calls the function and prints "Prime" if the number is prime, "Not Prime" otherwise.
// - Additionally, calculates the factorial of the number using a loop and prints the result.
// Goal: Practice control flow, function definition, and loops.

import 'dart:io';

void main() {
  stdout.write("Please, Enter the number : ");
  int userInputNumber = int.parse(stdin.readLineSync()!);
  numberType inputNumberType = isPrime(number: userInputNumber);
  int factOfUserInputNumber = fact(userInputNumber);
  switch (inputNumberType) {
    case numberType.prime:
      print("Prime Number");
      break;
    case numberType.notPrime:
      print("Not Prime Number");
      break;
  }

  print(factOfUserInputNumber);
}

enum numberType { prime, notPrime }

numberType isPrime({required int number}) {
  for (int i = 2; i < number; i++) {
    if (number % i == 0) {
      return numberType.notPrime;
    }
  }
  return numberType.prime;
}

int fact(int number) {
  int factValue = 1;
  for (int i = number; i > 0; i--) {
    factValue *= i;
  }
  return factValue;
}
