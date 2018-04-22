import 'dart:math';

Shape shapeFactory(String type) {
  if (type == 'circle') return new Circle(2);
  if (type == 'square') return new Square(2);
  throw 'Can\'t create $type.';
}

abstract class Shape {
  num get area;
}

class CircleMock implements Circle {
  num area;
  num radius;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => PI * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

main() {
  var circle = shapeFactory('circle');
  var square = shapeFactory('square');
  print(circle.area);
  print(square.area);
}
