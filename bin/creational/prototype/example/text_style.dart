import 'cloneable.dart';

enum Color { white, black }

class FontWeight {
  const FontWeight.bold();

  const FontWeight.normal();

  const FontWeight.w100();
}

class TextStyle implements Cloneable {
  final Color? color;
  final Color? backgroundColor;
  final double fontSize;
  FontWeight? fontWeight = FontWeight.normal();
  final double letterSpacing;
  final double wordSpacing;

  TextStyle({
    this.color,
    this.backgroundColor,
    this.fontSize = 16,
    this.fontWeight,
    this.letterSpacing = 2,
    this.wordSpacing = 2,
  });

  @override
  TextStyle clone() {
    return TextStyle(
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
    );
  }

  @override
  String toString() {
    return 'TextStyle{color: $color, backgroundColor: $backgroundColor, fontSize: $fontSize, fontWeight: $fontWeight, letterSpacing: $letterSpacing, wordSpacing: $wordSpacing}';
  }
}
