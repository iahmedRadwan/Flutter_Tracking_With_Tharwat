// Inventory Management System
// Topic: Classes, Objects, Encapsulation
// Exercise: Define a class Product with properties like name, price, and quantity. Include methods to update the quantity
// and calculate the total price for a given quantity. In the main function, create a Product object, update the quantity, and
// print the total price.

void main() {
  Product chips = Product(name: "Layez", quantity: 20, price: 50);
  print(chips.calculateTotalPrice());
}

class Product {
  String name;
  num price;
  num quantity;

  Product({required this.name, this.price = 100, this.quantity = 20});

  void updateQuantity({required num newQuantity}) {
    quantity = newQuantity;
  }

  num calculateTotalPrice() {
    return quantity * price;
  }
}
