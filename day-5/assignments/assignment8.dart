// Exercise 8: Inheritance
// Create a class ElectricCar that inherits from the Car class. Add a new property batteryCapacity (int)
// and a method displayBatteryStatus() that prints the battery capacity. Override the displayInfo()
// method to include battery details.
// Goal: Practice inheritance and method overriding.

void main() {
  ElectricCar tesla = ElectricCar(year: 2024, batteryCapacity: 97);
  tesla.model = "E";
  tesla.DisplayInfo();
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

class ElectricCar extends Car {
  int batteryCapacity;
  ElectricCar({required super.year, required this.batteryCapacity});
  @override
  void DisplayInfo() {
    super.DisplayInfo();
    displayBatteryStatus();
  }

  void displayBatteryStatus() {
    print(batteryCapacity);
  }
}
