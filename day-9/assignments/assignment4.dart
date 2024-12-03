// ## 4. Null Safety, Optional Parameters, and Logical Operators
// Write a program that:
// - **Defines a class `User` with:**
// - Properties: `String? name`, `int? age`, and `String? email`.
// - **A method `isAdult()` that:**
// - Returns `true` if the age is 18 or older; otherwise, returns `false`.
// - Checks for null values using the null-aware operator (`??`).
// - **In `main()`, create a `User` object with only the name and email fields, leaving age as null.**
// - **Print whether the user is an adult or not.**
// ---

void main() {
  User ahmed = User("gmail.com", "ahmed");
  bool isAdult = ahmed.isAdult();
  print(isAdult);
}

class User {
  String? name;
  int? age;
  String? email;
  User([this.email, this.name, this.age]);
  bool isAdult() {
    if ((age ?? 0) > 18) {
      return true;
    } else {
      return false;
    }
  }
}
