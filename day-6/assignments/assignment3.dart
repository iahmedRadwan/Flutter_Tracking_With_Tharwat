// 3. Null Safety, Strings, and Higher-Order Functions
// Write a function `formatNames(List<String?> names)` that:
// - Removes null values from the list.
// - Capitalizes the first letter of each name using String methods.
// - Returns the formatted list as a single string, with names separated by commas.
// Test it with the list `["john", null, "alice", "bob"]`.
// Goal: Understand null safety, string manipulation, and higher-order functions.

void main() {
  String fullFormatedNames = formatNames(names: ["john", null, "alice", "bob"]);
  print(fullFormatedNames);
}

String formatNames({required List<String?> names}) {
  List<String> formatNames = [];
  String fullFormatNames = "";
  names.forEach((item) {
    if (item != null) {
      item[0].toUpperCase();
      formatNames.add(item);
    }
  });
  formatNames.forEach((item) {
    fullFormatNames += item + ", ";
  });
  return fullFormatNames;
}
