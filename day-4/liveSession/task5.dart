// Conditional Logic for User Roles
// Topic: Conditional statements, If-Else, Logical operators
// Exercise: Write a program that checks the role of a user (e.g., admin, user, guest). Print 'Welcome Admin' if the role is
// admin, 'Welcome User' if it's user, and 'Welcome Guest' otherwise.

void main() {
  bool isAdmin = false;
  bool isUser = true;
  bool isGuest = false;

  if (isAdmin) {
    print("Welcome Admin");
  } else if (isUser) {
    print("Welcome user");
  } else {
    print("Welcome Guest");
  }
}
