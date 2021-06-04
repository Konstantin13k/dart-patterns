
import 'widget.dart';

class Column extends Widget {
  final List<Widget> children;

  Column({required this.children});

  @override
  void onDraw() {
    children.forEach(
      (widget) {
        widget.onDraw();
      },
    );
  }
}
