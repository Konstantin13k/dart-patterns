import 'text_style.dart';

class TextAlight {
  const TextAlight.center();

  const TextAlight.end();

  const TextAlight.start();
}

class TextWidget {
  final String data;
  final TextStyle style;
  final TextAlight textAlight;

  TextWidget(this.data, this.style, this.textAlight);

  void onDraw(){
    print(data);
  }
}

class TextWidgetBuilder {
  final String _data;
  TextStyle _style = TextStyleBuilder().build();
  TextAlight _textAlight = TextAlight.start();

  TextWidgetBuilder(this._data);

  TextWidgetBuilder style(TextStyle style) {
    _style = style;
    return this;
  }

  TextWidgetBuilder textAlight(TextAlight textAlight) {
    _textAlight = textAlight;
    return this;
  }

  TextWidget build() {
    return TextWidget(_data, _style, _textAlight);
  }
}
