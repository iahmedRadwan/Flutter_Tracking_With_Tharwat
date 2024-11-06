// Nested If for Temperature Ranges
// Objective: Use nested if statements to check multiple conditions.
// Instructions:
// - Create an integer variable temperature.
// - If temperature is above 30, print 'It's hot!'.
// - If it's between 15 and 30, print 'It's warm.'.
// - Otherwise, print 'It's cold.'.

void main() {
  int temperature = 30;
  bool isHighTemperature = temperature > 30;
  bool isWarmTemperature = temperature > 15 && temperature < 30;
  if (isHighTemperature) {
    print("it's hot!");
  } else if (isWarmTemperature) {
    print("It's warm");
  } else {
    print("It's cold");
  }
}
