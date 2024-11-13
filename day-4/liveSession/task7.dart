// Student Grades Program
// Topic: Functions, Parameters, Return statement
// Exercise: Create a function called calculateGrade that takes a score (0 to 100) as a parameter and returns a letter grade
// (e.g., A, B, C). Then write a main function to call calculateGrade and print the grade for a given score.

void main() {
  print(calculateGrade(degree: 86));
}

String calculateGrade({required num degree}) {
  if (degree > 90) {
    return "A";
  } else if (degree > 80) {
    return "B";
  } else if (degree > 65) {
    return "C";
  } else if (degree > 50) {
    return "D";
  } else {
    return "F";
  }
}
