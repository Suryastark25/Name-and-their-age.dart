import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();

  stdout.write("Enter your age: ");
  String? ageStr = stdin.readLineSync();
  int? age = int.tryParse(ageStr!);

  if (name == null || name.isEmpty) {
    print("Please enter a valid name.");
    return;
  }

  if (age == null || age <= 0) {
    print("Please enter a valid age.");
    return;
  }

  int yearsToHundred = 100 - age;
  print("$name, you have $yearsToHundred years until you turn 100 years old.");
}
