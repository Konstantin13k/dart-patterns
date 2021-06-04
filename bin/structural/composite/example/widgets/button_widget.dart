import 'widget.dart';

class Button extends Widget {
  final String name;

  Button({required this.name});

  @override
  void onDraw() {
    print(this);
  }

  @override
  String toString() {
    return 'Button{ name: $name }';
  }
}
