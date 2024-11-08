// Task: Create a class Car with properties make (e.g., String) and model (e.g., String). Create an
// object of the class Car, initialize its properties, and print the details of the car.

void main() {
  Car bmw = Car();
  bmw.make = "Germeny";
  bmw.model = "X6";
  print(bmw.make);
  print(bmw.model);
}

class Car {
  String? make;
  String? model;
}
