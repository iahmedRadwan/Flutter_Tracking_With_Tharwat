// 3. OOP, Constructors, and Named Parameters
// Write a program that:
// - Defines a class `Product` with:
// - Properties: `String name`, `double price`, `int stock`.
// - A constructor using named parameters with default values for `price` and `stock` (e.g., `price =
// 0.0`, `stock = 0`).
// - A method `sell(int quantity)` that reduces the stock and prints a confirmation message.
// - In `main()`, create an instance of `Product`, sell a few units, and print the updated stock.

void main() {
  Product product = Product(name: "Tea");
  product.stock = 50;
  product.sell(5);
  print(product.stock);
}

class Product {
  String name;
  double price;
  int stock;
  Product({required this.name, this.price = 0, this.stock = 0});

  void sell(int quantity) {
    stock -= quantity;
    print("Process Done Successfully");
  }
}
