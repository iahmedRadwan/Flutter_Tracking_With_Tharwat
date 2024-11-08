// Exercise 3: Using the do-while Loop
// Objective: Practice the do-while loop and the condition evaluation.
// Task: Write a program that asks the user to input a number, then prints whether the number is odd
// or even. The program should repeat the question until the user enters a negative number.

import 'dart:io';

void main() {
  print("Please Enter the number ");
  int userNumber;
  do {
    userNumber = int.parse(stdin.readLineSync()!);
    bool isEvenNumber = userNumber % 2 == 0;
    if (isEvenNumber) {
      print("The number is Even");
    } else {
      print("The number is odd");
    }
  } while (userNumber >= 0);
}
