import 'dart:math';

abstract class Shape {
  getArea();
  // kayaknya area langsung di define di abstrak

  getParimeter();
}

// class Circle extends Shape {}

//
class Circle implements Shape {
  final double radius;
  Circle({required this.radius});

  @override
  getArea() {
    return pi * (radius * radius);
  }

  @override
  getParimeter() {
    return radius * 2 * (pi);
  }
}

class Square extends Shape {
  double side;
  Square(this.side);

  // var a =
  // Square(this.side) : super(height: side, width: side);
  // get parimeter darimana si

  @override
  getArea() {
    // print("Square dengan sisi $side");
    // side * side * side * side
    return side * 4;
    // return super.getArea();
  }

  @override
  getParimeter() {
    // TODO: implement getParimeter
    throw UnimplementedError();
  }
}

class Rectangle implements Shape {
  double width;
  double height;

  Rectangle({required this.width, required this.height});
  @override
  getArea() {
    // kayaknya area langsung di define di abstrak

    return width * height;
  }

  @override
  getParimeter() {
    return (width * 2) + (height * 2);
  }
}

void main() {
  Circle cir = Circle(radius: 7.5);
  print("luas Circle : ${cir.getArea()}");
  print("Keliling Circle : ${cir.getParimeter()}");

  print("");
  Square squ = Square(4);
  print("luas Square : ${squ.getArea()}");
  // print("keliling Square : ${squ.getArea()}");
  print("");

  Rectangle rec = Rectangle(width: 20, height: 40);
  print("luas Rectangle : ${rec.getArea()}");
  print("keliling Rectangle : ${rec.getParimeter()}");
}
