import 'dart:io';

// String Manipulation
void stringManipulation() {
  String str = "Hello, Keileb!";
  
  // Concatenation
  String concatenated = str + " How are you?";
  print("Concatenated: $concatenated");

  // Interpolation
  String name = "User";
  String interpolated = "Welcome, $name!";
  print("Interpolated: $interpolated");

  // Substring extraction
  String substring = str.substring(0, 5);
  print("Substring: $substring");

  // Case conversion
  print("Uppercase: ${str.toUpperCase()}");
  print("Lowercase: ${str.toLowerCase()}");

  // Reverse a string
  String reverse(String s) => s.split('').reversed.join('');
  print("Reversed: ${reverse(str)}");

  // Count length
  print("Length: ${str.length}");
}

// Collections (Lists, Sets, Maps)
void collections() {
  // List
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  fruits.add('Mango');
  fruits.remove('Banana');
  print("Fruits List: $fruits");

  // Set
  Set<int> numbers = {1, 2, 3}; 
  numbers.add(4);
  numbers.remove(2);
  print("Numbers Set: $numbers");

  // Map
  Map<String, int> scores = {'Alice': 90, 'Bob': 85};
  scores['Charlie'] = 88;
  scores.remove('Alice');
  print("Scores Map: $scores");
}

// File Handling
Future<void> fileHandling() async {
  String filePath = 'data.txt';
  String outputPath = 'output.txt';

  // Read from a file
  try {
    String content = await File(filePath).readAsString();
    print("File Content: $content");
  } catch (e) {
    print("Error reading file: $e");
  }

  // Write to a file
  try {
    await File(outputPath).writeAsString('Hello, World!\n');
    print("Data written to $outputPath");
  } catch (e) {
    print("Error writing to file: $e");
  }
}

// Date and Time
void dateTime() {
  DateTime now = DateTime.now();
  print("Current Date and Time: $now");

  // Adding days
  DateTime futureDate = now.add(Duration(days: 5));
  print("Future Date: $futureDate");

  // Subtracting days
  DateTime pastDate = now.subtract(Duration(days: 5));
  print("Past Date: $pastDate");

  // Calculating difference
  Duration difference = futureDate.difference(now);
  print("Difference in days: ${difference.inDays}");
}

// Combined Application
Future<void> main() async {
  // String Manipulation
  stringManipulation();

  // Collections 
  collections();

  // File Handling
  await fileHandling();

  // Date and Time
  dateTime();
}
