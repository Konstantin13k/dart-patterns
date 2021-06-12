import '../visitor/visitor.dart';

abstract class Shape {
  void move(int x, int y);

  void draw();

  String accept(Visitor visitor);
}

class Dot implements Shape {
  int _id;
  int _x;
  int _y;

  Dot(this._id, this._x, this._y);

  @override
  void move(int x, int y) {
    // TODO: implement move
  }

  @override
  void draw() {
    // TODO: implement draw
  }

  @override
  String accept(Visitor visitor) {
    return visitor.visitDot(this);
  }

  int get id => _id;

  int get x => _x;

  int get y => _y;
}

class Circle extends Dot {
  int _radius;

  Circle(int id, int x, int y, this._radius) : super(id, x, y);

  int get radius => _radius;

  @override
  String accept(Visitor visitor) {
    return visitor.visitCircle(this);
  }
}
