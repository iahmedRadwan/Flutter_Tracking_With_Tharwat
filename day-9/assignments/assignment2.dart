// ## 2. Classes, Inheritance, and Static Methods
// Write a program that:
// - **Creates a base class `Vehicle` with:**
// - Properties: `String brand` and `int year`.
// - A method `describe()` that prints the brand and year.
// - **Creates a subclass `Car` that:**
// - Extends `Vehicle`.
// - Adds a property `int mileage`.
// - Overrides the `describe()` method to include mileage.
// - Adds a static method `Car.totalMileage(List<Car> cars)` to calculate and print the total mileage of
// a list of cars.
// - **In `main()`, create a list of `Car` objects, calculate the total mileage, and print the details of each
// car.**
// ---

void main() {
  List<Car> cars = [
    Car(brand: "BMW", year: 2022, mileage: 400),
    Car(brand: "Marcidies", year: 2021, mileage: 200),
    Car(brand: "W", year: 2023, mileage: 300),
    Car(brand: "Audie", year: 2023, mileage: 100),
  ];

  Car.totalMileage(cars);
  for (var car in cars) {
    car.descripe();
  }
}

class Vehicle {
  String brand;
  int year;
  Vehicle({required this.brand, required this.year});
  void descripe() {
    print("$brand -- $year");
  }
}

class Car extends Vehicle {
  Car({required super.brand, required super.year, required this.mileage});
  int mileage;

  @override
  void descripe() {
    super.descripe();
    print("$mileage");
  }

  static void totalMileage(List<Car> cars) {
    int totalMilePerCars = 0;
    for (var car in cars) {
      totalMilePerCars += car.mileage;
    }
    print(totalMilePerCars);
  }
}
