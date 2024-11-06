// Switch Case with Seasons
// Objective: Use switch for multiple cases.
// Instructions:
// - Create an integer variable month with a value between 1 and 12.
// - Use a switch statement to print the season based on the month.

void main() {
  int month = 7;

  switch (month) {
    case 12 || 1 || 2:
      print("winter");
      break;
    case 3 || 4 || 5:
      print("Spring");
      break;
    case 6 || 7 || 8:
      print("Summer");
      break;
    case 9 || 10 || 11:
      print("Autumn");
      break;
    default:
      print("Month invalid");
  }
}
