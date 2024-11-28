// 2. Lists, Maps, and Conditional Statements
// Write a program that:
// - Takes a list of student scores:
// ```dart
// List<int> scores = [85, 72, 90, 66, 78];
// ```
// - Maps the scores to grades using the following criteria:
// - 90+ = "A"
// - 80-89 = "B"
// - 70-79 = "C"
// - Below 70 = "D"
// - Stores the results in a `Map<int, String>` where the key is the score, and the value is the grade.
// - Prints the scores and their corresponding grades.

void main() {
  List<int> scores = [85, 72, 90, 66, 78];
  var results;
  results = scores.map((element) {
    Map<int, String> results = {};
    if (element >= 90) {
      results.addEntries(<int, String>{element: 'A'}.entries);
    } else if (element >= 80) {
      results.addEntries(<int, String>{element: 'B'}.entries);
    } else if (element >= 70) {
      results.addEntries(<int, String>{element: 'C'}.entries);
    } else {
      results.addEntries(<int, String>{element: 'D'}.entries);
    }
    return results;
  });
  print(results);
}
