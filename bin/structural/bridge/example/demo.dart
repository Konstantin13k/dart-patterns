import 'text_style.dart';
import 'text_widget.dart';

void main() {
  final textWidget = TextWidget(
    'Hello Bridge!',
    textAlight: TextAlight.center(),
    style: TextStyle(
      color: Color.black,
      backgroundColor: Color.white,
      fontSize: 24,
    ),
  );

  textWidget.onDraw();
}
