import 'text_style.dart';

class TextAlight {
  const TextAlight.center();

  const TextAlight.end();

  const TextAlight.start();
}

class TextWidget {
  final String data;
  final TextStyle? style;
  final TextAlight? textAlight;

  TextWidget(this.data, {this.style, this.textAlight});

  void onDraw() {
    print(this);
  }

  @override
  String toString() {
    return 'TextWidget{data: $data, style: $style, textAlight: $textAlight}';
  }
}
