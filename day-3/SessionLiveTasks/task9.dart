// Exercise 10: Define a Class and Create an Object
// Objective: Introduce classes and objects.
// Task: Define a class Car with two properties: make and model. Create an instance of the Car class
// and print out its properties.

void main() {
  Car bmw = Car();
  print(bmw.make);
  print(bmw.model);
}

class Car {
  String? make;
  String? model;
}
