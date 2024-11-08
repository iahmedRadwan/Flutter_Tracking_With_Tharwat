// Exercise 2: While Loop to Calculate Sum
// Objective: Understand how to use the while loop.
// Task: Write a program that calculates the sum of numbers from 1 to 100 using a while loop.

void main() {
  int i = 1;
  int sum = 0;
  while (i <= 100) {
    sum += i;
    i++;
  }
  print(sum);
}
