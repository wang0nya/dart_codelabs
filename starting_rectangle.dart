import 'dart:math';

class Rectangle {
  int width;
  int height;
  Point origin;
  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});
  @override
  String toString() =>
      'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';
}

main() {
  print(new Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(new Rectangle(origin: const Point(10, 10)));
  print(new Rectangle(width: 200));
  print(new Rectangle());
} // Included main() to suppress uncaught exception.
