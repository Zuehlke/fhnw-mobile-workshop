void main() {
  print("Uebung 1.1 a.");
  print(helloWorld("Denise"));

  print("Uebung 1.1 b.");
  print("fib(42) = ${fib(42)}");

  print("Uebung 1.1 c.");
  Rectangle rec1 = Rectangle(42.0, 7.7);
  print(rec1);
  Rectangle rec2 = Rectangle(4.0, 4.0);
  print(rec2);
}

// a.
String helloWorld(String name) {
  return "Hello World, this is $name speaking!";
}

// b.
int fib(int n) {
  if (n < 2) {
    return n;
  }

  return fib(n - 2) + fib(n - 1);
}

// c.
class Rectangle {
  double width;
  double height;

  Rectangle(double width, double height) {
    this.width = width;
    this.height = height;
  }

  double getArea() {
    return width * height;
  }

  bool isSquare() {
    return width == height;
  }

  @override
  String toString() {
    return "Rectangle - Width: $width, Height: $height, isSquare: ${isSquare()}";
  }
}
