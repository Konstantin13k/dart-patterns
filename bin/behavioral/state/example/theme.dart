import 'color.dart';

abstract class Theme {
  Color get primary;

  Color get primaryVariant;

  Color get secondary;

  Color get secondaryVariant;

  Color get onPrimary;

  Color get onSecondary;
}

class LightTheme extends Theme {
  @override
  Color get primary => Color.white;

  @override
  Color get primaryVariant => Color.white;

  @override
  Color get secondary => Color.red;

  @override
  Color get secondaryVariant => Color.red;

  @override
  Color get onPrimary => Color.black;

  @override
  Color get onSecondary => Color.green;
}

class DarkTheme extends Theme {
  @override
  Color get primary => Color.black;

  @override
  Color get primaryVariant => Color.black;

  @override
  Color get secondary => Color.red;

  @override
  Color get secondaryVariant => Color.red;

  @override
  Color get onPrimary => Color.white;

  @override
  Color get onSecondary => Color.green;
}
