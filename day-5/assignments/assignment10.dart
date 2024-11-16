// Exercise 10: OOP - Mixins
// Create a mixin Logger with a method log(String message) that prints a log message. Apply the mixin
// to a User class that contains name and email properties. Use the log method in the User class to log
// messages like "User created" and "User deleted."
// Goal: Learn about mixins and their application in Dart.

void main() {
  User ahmed = User(email: "ahmedr551010@gmail.com", name: "Ahmed Radwan");
  ahmed.displayInfo();
  ahmed.deleteUser();
  ahmed.displayInfo();
}

mixin LoggerMixin {
  log(String message) {
    print(message);
  }
}

class User with LoggerMixin {
  String? name;
  String? email;
  User({required this.email, required this.name}) {
    log("User Created");
  }

  deleteUser() {
    name = null;
    email = null;
    log("User Deleted");
  }

  displayInfo() {
    print(name ?? "No User Found");
    print(email ?? "No User Found");
  }
}
