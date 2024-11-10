// 6. Working with Maps - Student Details:
// - Task 1: Create a map representing a student with keys for name, age, and grade. Add, update,
// and remove entries from the map, printing the map after each operation.
// - Task 2: Iterate over the map and print each key-value pair.

import 'dart:io';

void main() {
  Map<String, Map<String, dynamic>> studentsDetails = {};
  addStudentToStudentsDetails(
      name: "ahmed", age: 23, grade: 76, studentsDetails: studentsDetails);
  print(studentsDetails);
  updateStudentInStudentsDetails(
      nameItemKey: 'ahmed',
      newName: "Radwan",
      age: 23,
      grade: 89,
      studentsDetails: studentsDetails);
  print(studentsDetails);
  removeStudentToStudentsDetails(
      name: "ahmed", studentsDetails: studentsDetails);
  displayKeyValue(studentsDetails: studentsDetails);
}

void addStudentToStudentsDetails(
    {required String name,
    required int age,
    required num grade,
    required Map<String, dynamic> studentsDetails}) {
  Map<String, Map<String, dynamic>> studentDetails = {
    name: {"Age": age, "Grade": grade}
  };
  studentsDetails.addEntries(studentDetails.entries);
}

void removeStudentToStudentsDetails(
    {required String name, required Map<String, dynamic> studentsDetails}) {
  if (studentsDetails.containsKey(name)) {
    print("removed");
    studentsDetails.remove(name);
  }
}

void updateStudentInStudentsDetails(
    {required String nameItemKey,
    String? newName,
    required int age,
    required num grade,
    required Map<String, Map<String, dynamic>> studentsDetails}) {
  newName = newName ?? nameItemKey;
  if (studentsDetails.containsKey(nameItemKey)) {
    Map<String, Map<String, dynamic>> studentDetails = {
      newName: {"Age": age, "Grade": grade}
    };
    studentsDetails.remove(nameItemKey);
    studentsDetails.addEntries(studentDetails.entries);
    print("Updated");
  }
}

void displayKeyValue(
    {required Map<String, Map<String, dynamic>> studentsDetails}) {
  studentsDetails.entries.forEach((item) {
    print("---------------------");
    print(item.key);
    print("---------------------");
    item.value.entries.forEach((itemValue) {
      stdout.write(itemValue.key);
      stdout.write(" ------> ");
      stdout.write(itemValue.value);
      print("");
    });
  });
}
