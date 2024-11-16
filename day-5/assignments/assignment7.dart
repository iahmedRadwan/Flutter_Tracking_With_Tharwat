// Exercise 7: Encapsulation
// Add private properties _make and _model to the Car class created in Exercise 6. Add getters and
// setters for these properties. Modify the class to demonstrate encapsulation.
// Goal: Understand access control and encapsulation principles.

void main() {
  Car bmw = Car(year: 2023);
  bmw.make = "Germany";
  bmw._model = "X6";
  bmw.DisplayInfo();
}

class Car {
  String? _make, _model;
  int year;
  Car({required this.year});

  set make(String make) {
    _make = make;
  }

  String get make => _make ?? "Unkown make";

  set model(String model) {
    _model = model;
  }

  String get model => _model ?? "Unkown model";

  void DisplayInfo() {
    print(this.make);
    print(this.model);
    print(year);
  }
}
