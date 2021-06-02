import 'text_style.dart';
import 'text_widget.dart';

void main() {
  final textWidget = TextWidgetBuilder('Hello Builder!')
      .textAlight(TextAlight.center())
      .style(TextStyleBuilder()
          .color(Color.black)
          .backgroundColor(Color.white)
          .wordSpacing(4)
          .letterSpacing(4)
          .fontWeight(FontWeight.bold())
          .build())
      .build();

  textWidget.onDraw();
}
