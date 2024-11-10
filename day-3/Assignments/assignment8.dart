// 8. Range Checker Program:
// Write a Dart program that checks if a number is within a specified range using logical operators and
// prints the result.
import 'dart:io';

void main() {
  int upperDegreeLimit = 100;
  int lowerDegreeLimit = 0;
  stdout.write("Please Enter degree to check it's valid or not : ");
  num userInputNumber = num.parse(stdin.readLineSync()!);
  bool isValidRangeNumber = lowerDegreeLimit <= userInputNumber &&
      userInputNumber <= upperDegreeLimit;
  if (isValidRangeNumber) {
    print("valid degree");
  } else {
    print("invalid degree");
  }
}
