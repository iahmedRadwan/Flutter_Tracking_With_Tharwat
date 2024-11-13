// Collection Operations
// Topic: Lists, Sets, Maps
// Exercise:
// - Create a list of numbers, add a few elements, remove one, and display the final list.
// - Create a set with some duplicate elements and print the set to show that duplicates are removed.
// - Create a map with keys as student names and values as grades. Print a student's grade by accessing their name in
// the map.

void main() {
  List<int> numbers = [];
  numbers.add(4);
  numbers.add(1);
  numbers.add(6);
  numbers.remove(1);
  print(numbers);
  Set<int> numbersOfSetWithDuplicate = {1, 4, 3, 6, 1, 3};
  print(numbersOfSetWithDuplicate);
  Map<String, num> sutudentsGrades = {"Ahmed": 92, "Mohamed": 96};
  print(sutudentsGrades["Ahmed"]);
}
