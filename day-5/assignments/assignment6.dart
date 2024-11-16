// Exercise 6: OOP - Classes and Objects
// Create a class Car with the following properties:
// - make (String)
// - model (String)
// - year (int)
// Add a method displayInfo() that prints all the car's details. Instantiate a Car object and call its
// displayInfo() method.
// Goal: Introduce classes, objects, and methods.

void main() {
  Car bmw = Car(make: "Germany", model: "X6", year: 2023);
  bmw.DisplayInfo();
}

class Car {
  String make, model;
  int year;
  Car({required this.make, required this.model, required this.year});
  void DisplayInfo() {
    print(make);
    print(model);
    print(year);
  }
}
