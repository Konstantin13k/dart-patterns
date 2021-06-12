import 'shapes/shape.dart';
import 'visitor/visitor.dart';

void main() {
  final Dot dot = Dot(1, 10, 15);
  final Circle circle = Circle(2, 3, 40, 10);

  final JsonExportVisitor jsonExportVisitor = JsonExportVisitor();
  print(jsonExportVisitor.export([dot, circle]));
}
