// 2. Loops, Conditional Statements, and Strings
// Write a program that:
// - Accepts a string from the user.
// - Counts the occurrences of each vowel (a, e, i, o, u) in the string using a `Map<String, int>`.
// - Ignores case (e.g., count A and a together).
// - Prints the vowels and their counts.

import 'dart:io';

void main() {
  stdout.write("Please, Enter statment ");
  String inputString = stdin.readLineSync()!;
  Map<String, int> inputStringOperation = doStringOperation(inputString);
  print(inputStringOperation);
}

Map<String, int> doStringOperation(String inputString) {
  Map<String, int> outputMap = {};

  for (int i = 0; i < inputString.length; i++) {
    if (!outputMap.keys.contains(inputString[i])) {
      outputMap[inputString[i]] = 0;
    }
  }
  for (int i = 0; i < inputString.length; i++) {
    if (outputMap.keys.contains(inputString[i]) ||
        outputMap.keys.contains(inputString[i].toUpperCase())) {
      outputMap[inputString[i]] = outputMap[inputString[i]]! + 1;
    }
  }
  return outputMap;
}
