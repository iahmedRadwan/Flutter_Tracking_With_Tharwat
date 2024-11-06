// If Condition with String Comparison
// Objective: Use if to check string equality.
// Instructions:
// - Create a string variable password and set it to 'secret'.
// - If password equals 'secret', print 'Access granted', otherwise print 'Access denied'.

void main() {
  String password = "secret";
  String currentPassword = "";
  bool isCorrectPassword = password == currentPassword;
  if (isCorrectPassword) {
    print("Access granted");
  } else {
    print("Access denied");
  }
}
