// If-Else with Grades
// Objective: Practice conditional statements with integer values.
// Instructions:
// - Create an integer variable marks.
// - If marks is 70 or higher, print 'Passed', otherwise print 'Failed'.

void main() {
  int marks = 76;
  bool isPass = marks > 70;
  if (isPass) {
    print("Passed");
  } else {
    print("Failed");
  }
}
