// Exercise 2: Collection Data Type Overview
// Objective: Work with different collection types.
// Instructions:
// - Create a list of favorite colors (Strings).
// - Create a set of unique numbers (integers).
// - Create a map with at least three countries as keys and their capitals as values.
// - Print all three collections.

void main() {
  List<String> favColor = ['red', 'white', 'black'];
  Set<int> uniqueIntegar = {1, 2, 3, 4, 5, 3};
  Map<String, String> countries = {
    "EGY": "Cairo",
    "USA": "Washington",
    "SA": "Ryade"
  };
  print(favColor);
  print(uniqueIntegar);
  print(countries);
}
