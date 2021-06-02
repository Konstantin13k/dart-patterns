enum Color { white, black }

class FontWeight {
  const FontWeight.bold();

  const FontWeight.normal();

  const FontWeight.w100();
}

class TextStyle {
  final Color? color;
  final Color? backgroundColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double letterSpacing;
  final double wordSpacing;

  TextStyle(this.color, this.backgroundColor, this.fontSize, this.fontWeight,
      this.letterSpacing, this.wordSpacing);
}

class TextStyleBuilder {
  Color? _color;
  Color? _backgroundColor;
  double _fontSize = 16;
  FontWeight _fontWeight = FontWeight.normal();
  double _letterSpacing = 2;
  double _wordSpacing = 2;

  TextStyleBuilder color(Color color) {
    _color = color;
    return this;
  }

  TextStyleBuilder backgroundColor(Color color) {
    _backgroundColor = color;
    return this;
  }

  TextStyleBuilder fontSize(double fontSize) {
    _fontSize = fontSize;
    return this;
  }

  TextStyleBuilder fontWeight(FontWeight fontWeight) {
    _fontWeight = fontWeight;
    return this;
  }

  TextStyleBuilder letterSpacing(double letterSpacing) {
    _letterSpacing = letterSpacing;
    return this;
  }

  TextStyleBuilder wordSpacing(double wordSpacing) {
    _wordSpacing = wordSpacing;
    return this;
  }

  TextStyle build() {
    return TextStyle(_color, _backgroundColor, _fontSize, _fontWeight,
        _letterSpacing, _wordSpacing);
  }
}
