void main() {
  String firstName = "ahmed";
  String lastName = "Radwan";
  String fullName = firstName + lastName;
  print(fullName);
  String firstNameExtract = fullName.substring(0, lastName.length - 1);
  print(firstNameExtract);
}
