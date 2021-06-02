import 'cloneable.dart';
import 'text_style.dart';

class TextAlight {
  const TextAlight.center();

  const TextAlight.end();

  const TextAlight.start();
}

class TextWidget implements Cloneable<TextWidget> {
  final String data;
  final TextStyle? style;
  final TextAlight? textAlight;

  TextWidget(this.data, {this.style, this.textAlight});

  TextWidget._copy(TextWidget textWidget)
      : this(
          textWidget.data,
          style: textWidget.style?.clone(),
          textAlight: textWidget.textAlight,
        );

  void onDraw() {
    print(this);
  }

  @override
  TextWidget clone() {
    return TextWidget._copy(this);
  }

  @override
  String toString() {
    return 'TextWidget{data: $data, style: $style, textAlight: $textAlight}';
  }
}
