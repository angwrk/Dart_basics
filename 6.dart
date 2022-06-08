import 'dart:math';

void main() {
  Point a = Point(0, 7, 9);
  Point b = Point(0, 3, 6);

  print("Your result is: " + a.distanceTo(b).toString());
}

class Point {
  final double x;
  final double y;
  final double z;
  Point(this.x, this.y, this.z);
  factory Point.zero() {
    return Point(0, 0, 0);
  }
  factory Point.unit() {
    return Point(1, 1, 1);
  }
  double distanceTo(Point b) {
    double result;
    double xGen = this.x - b.x;
    double yGen = this.y - b.y;
    double zGen = this.z - b.z;
    result = sqrt(xGen * xGen + yGen * yGen + zGen * zGen);
    return result;
  }
}
