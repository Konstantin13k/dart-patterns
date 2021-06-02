import 'text_style.dart';
import 'text_widget.dart';

void main() {
  final textWidget = TextWidget(
    'Hello Prototype!',
    textAlight: TextAlight.center(),
    style: TextStyle(
      color: Color.black,
      backgroundColor: Color.white,
      fontSize: 24,
    ),
  );

  final textWidgetClone = textWidget.clone();

  textWidget.onDraw();
  textWidgetClone.onDraw();

  print(textWidget == textWidget);
  print(textWidgetClone == textWidget);
}
