// 2. Grocery List Manager:
// Implement a program that uses a List to store grocery items. It should allow adding, removing, and
// displaying items. Use functions with return types and optional/named parameters. Make sure to
// handle possible null values.

void main() {
  List<String> grocery = [];
  addGroceryItem(groceryItem: "Tomato", grocery: grocery);
  addGroceryItem(groceryItem: "pear", grocery: grocery);
  addGroceryItem(groceryItem: "bannana", grocery: grocery);
  addGroceryItem(groceryItem: "alma", grocery: grocery);
  displayGroceryItems(grocery: grocery);
  print(removeGroceryItem(groceryItem: "alma", grocery: grocery));
  print(removeGroceryItem(groceryItem: "peach", grocery: grocery));
  displayGroceryItems(grocery: grocery);
}

void addGroceryItem(
    {required String groceryItem, required List<String> grocery}) {
  grocery.add(groceryItem);
}

String removeGroceryItem(
    {required String groceryItem, required List<String> grocery}) {
  String removingStatus;
  if (grocery.contains(groceryItem)) {
    grocery.remove(groceryItem);
    removingStatus = "Success remove $groceryItem";
  } else {
    removingStatus = "Error while remove $groceryItem";
  }
  return removingStatus;
}

void displayGroceryItems({required List<String> grocery}) {
  grocery.forEach((groceryItem) {
    print(groceryItem);
  });
}
