// Exercise 8: Switch Case
// Objective: Use a switch-case statement to evaluate a variable.
// Instructions:
// - Write a program that takes a day number (1-7) and returns the name of the day (Monday to
// Sunday).

import 'dart:io';

void main() {
  int dayNumber = int.parse(stdin.readLineSync()!);
  switch (dayNumber) {
    case 1:
      print("saturday");
      break;
    case 2:
      print("sunday");
      break;
    case 3:
      print("monday");
      break;
    case 4:
      print("tuesday");
      break;
    case 5:
      print("thursday");
      break;
    case 6:
      print("wednesday");
      break;
    case 7:
      print("friday");
      break;
    default:
      print("invalid input");
  }
}
