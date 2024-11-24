// 1. Variables, Collections, and Functions
// Write a program that:
// - Accepts a list of integers as input.
// - Defines a function `calculateStats(List<int> numbers)` that:
// - Calculates the sum of all numbers.
// - Finds the maximum and minimum values in the list.
// - Returns a formatted string with these statistics.
// - Call the function with `[5, 12, 7, 3, 18]` and print the result.

import 'dart:io';

void main() {
  stdout.write("Please, Enter the numbers sperated by , ex:(1,2,3,...) ");
  String inputList = stdin.readLineSync()!;
  List<int> userInputNumberList = getListFromString(inputList);
  String numberStatistics = calculateStats(userInputNumberList);
  print(numberStatistics);
}

List<int> getListFromString(String inputList) {
  List<int> converdedList = [];
  for (int i = 0; i < inputList.length; i++) {
    if (inputList[i] != ",") {
      converdedList.add(int.parse(inputList[i]));
    }
  }
  return converdedList;
}

String calculateStats(List<int> numbers) {
  int sum = 0, min = numbers[0], max = numbers[0];
  numbers.forEach((number) {
    if (number > max) {
      max = number;
    } else if (number < min) {
      min = number;
    }
    sum += number;
  });

  return "Min:$min Max:$max Sum:$sum";
}
