// ## 3. Nested Loops, Conditional Logic, and String Manipulation
// Write a program that:
// - **Prints a multiplication table from 1 to 5 using nested loops.**
// - **Skips printing results where either multiplier or multiplicand is even.**
// - **Formats the output so each result is padded to 4 characters for better alignment.**
// ### Example Output:
// ```dart
// 1 3 5
// 3 9 15
// 5 15 25
// ```
// ---

import 'dart:io';

/// 1 2   3  4  5
/// 2 4   6  8  10
/// 3 6   9  12 15
/// 4 8  12  16 20
/// 5 10 15 20 25
///
void main() {
  for (int i = 1; i <= 5; i++) {
    if (i % 2 == 0) {
      continue;
    }
    for (int j = 1; j <= 5; j++) {
      if (j % 2 == 0) {
        continue;
      }
      stdout.write("${i * j}\t");
    }
    print("");
  }
}
