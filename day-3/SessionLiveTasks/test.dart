void main() {
  List<String> names = ["ahmed", "radwan", "goda"];
  int nameIndex = 0;
  String fullString = "";
  for (int charIndex = 0; charIndex < names[nameIndex].length; charIndex++) {
    fullString += names[nameIndex][charIndex];
    if (charIndex == names[nameIndex].length - 1 &&
        nameIndex < names.length - 1) {
      nameIndex++;
      charIndex = -1;
      continue;
    }
  }
  print(fullString);
}
