import 'dart:io';

// Interface definition
abstract class Printable {
  void printInfo();
}

// Base class
class Shape {
  double area() {
    return 0;
  }
}

// Subclass inheriting from Shape and implementing Printable interface
class Rectangle extends Shape implements Printable {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }

  @override
  void printInfo() {
    print("Rectangle: width = $width, height = $height, area = ${area()}");
  }
}

void main() {
  // Create an instance of Rectangle
  var rectangle = Rectangle(5, 4);
  
  // Print information using the overridden method
  rectangle.printInfo();

  // Initialize data from a file
  File('data.txt').readAsString().then((String contents) {
    print('Data from file: $contents');
  }).catchError((e) => print('Error reading file: $e'));

  // Demonstrate the use of a loop
  for (int i = 0; i < 5; i++) {
    print("Iteration $i");
  }
}
