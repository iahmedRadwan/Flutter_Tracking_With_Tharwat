// 5. Class Creation and Dot Operator Usage:
// Create a class with a few properties and methods. Instantiate the class and use the dot operator to
// access and print its properties and methods.

void main() {
  Car bmw = Car();
  bmw.made = "Germany";
  bmw.model = "i6";
  bmw.maxSpeed = 2000;
  bmw.carMove();
  bmw.carStop();
}

class Car {
  String? model;
  String? made;
  int? maxSpeed;

  void carMove() {
    print("Car now move ...");
  }

  void carStop() {
    print("Car now Stop ...");
  }
}
