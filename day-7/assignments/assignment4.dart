// 4. OOP, Polymorphism, and Interfaces
// Create a program with the following:
// - An interface `Shape` with:
// - A method `double area()`.
// - Two classes `Circle` and `Rectangle` that:
// - Implement the `Shape` interface.
// - Provide implementations for the `area()` method.
// - Use appropriate constructors to initialize properties (radius for Circle, length and width for Rectangle).
// - In `main()`, create instances of `Circle` and `Rectangle` and print their areas.

void main() {
  Circle circle = Circle(raduis: 10);
  Rectangle rectangle = Rectangle(length: 10, width: 5);
  print(circle.Area());
  print(rectangle.Area());
}

abstract interface class Shape {
  double Area();
}

class Circle implements Shape {
  double raduis;
  Circle({required this.raduis});
  @override
  double Area() {
    return 3.14 * raduis * raduis;
  }
}

class Rectangle implements Shape {
  double width, length;
  Rectangle({required this.length, required this.width});
  @override
  double Area() {
    return width * length;
  }
}
