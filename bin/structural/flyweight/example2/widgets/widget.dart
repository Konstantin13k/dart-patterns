import '../edge_insets.dart';

abstract class Widget {
  final EdgeInsets margin;
  final EdgeInsets padding;

  Widget(this.margin, this.padding);

  void onDraw();
}

class Button extends Widget {
  final String name;

  Button({
    required this.name,
    EdgeInsets margin = const EdgeInsets.only(),
    EdgeInsets padding = const EdgeInsets.only(),
  }) : super(margin, padding);

  @override
  void onDraw() {
    print(this);
  }

  @override
  String toString() {
    return 'Button{name: $name, margin: $margin, padding: $padding}';
  }
}

class Text extends Widget {
  final String data;

  Text(
    this.data, {
    EdgeInsets margin = const EdgeInsets.only(),
    EdgeInsets padding = const EdgeInsets.only(),
  }) : super(margin, padding);

  @override
  void onDraw() {
    print(this);
  }

  @override
  String toString() {
    return 'Text{$data, margin: $margin, padding: $padding}';
  }
}
