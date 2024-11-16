// Exercise 9: Polymorphism
// Create a base class Shape with a method calculateArea(). Create two derived classes:
// - Circle with a property radius.
// - Rectangle with properties length and width.
// Override the calculateArea() method in both classes. Write a program to calculate and print the area
// of a circle and a rectangle.
// Goal: Understand polymorphism and method overriding.
void main() {
  Circle circle = Circle(raduis: 15);
  Rectangle rectangle = Rectangle(length: 10, width: 5);
  print(circle.calculateArea());
  print(rectangle.calculateArea());
}

class Shape {
  calculateArea() {}
}

class Circle extends Shape {
  double raduis;
  Circle({required this.raduis});

  @override
  calculateArea() {
    return 3.14 * raduis * raduis;
  }
}

class Rectangle extends Shape {
  double length, width;

  Rectangle({required this.length, required this.width});

  @override
  calculateArea() {
    return width * length;
  }
}
