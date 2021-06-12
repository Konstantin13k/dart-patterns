import '../shapes/shape.dart';

abstract class Visitor {
  String visitDot(Dot dot);

  String visitCircle(Circle circle);
}

class JsonExportVisitor extends Visitor {
  String export(List<Shape> args) {
    String json = '{ shapes: [';
    for (Shape shape in args) {
      json += '${shape.accept(this)}, ';
    }
    return '${json.substring(0, json.length - 2)}] }';
  }

  @override
  String visitDot(Dot dot) {
    return '{type: dot, id: ${dot.id}, x: ${dot.x}, y: ${dot.y}}';
  }

  @override
  String visitCircle(Circle circle) {
    return '{type: circle, id: ${circle.id}, x: ${circle.x}, y: ${circle.y}, radius: ${circle.radius}}';
  }
}
