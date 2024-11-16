// Exercise 5: Functions
// Create a function called calculateArea that takes two parameters: length and width. The function
// should return the area of a rectangle. Call the function and print the result.
// Goal: Understand function creation, parameters, and return values.
void main() {
  int areaOfRectangle = calculateArea(length: 10, width: 5);
  print(areaOfRectangle);
}

int calculateArea({required int length, required int width}) {
  return length * width;
}
