// ## 1. Collections, String Manipulation, and Functions
// Write a program that:
// - **Accepts a list of sentences:**
// ```dart
// List<String> sentences = [
// "Dart is awesome",
// "Flutter is amazing",
// "I love programming"
// ];
// ```
// - **Defines a function `countWords(List<String> sentences)` that:**
// - Counts the total number of words across all sentences.
// - Returns the count.
// - Prints the total word count and the longest word in the list.
// ---

import 'dart:math';

void main() {
  List<String> sentences = [
    "Dart is awesome",
    "Flutter is amazing",
    "I love programming"
  ];
  print(countWords(sentences));
}

int countWords(List<String> sentences) {
  int wordCount = 0;
  for (var sentence in sentences) {
    wordCount += sentence.split(" ").length;
  }
  return wordCount;
}
