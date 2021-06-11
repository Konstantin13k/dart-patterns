import 'color.dart';
import 'theme.dart';

class AppTheme extends Theme {
  Theme _currentTheme = LightTheme();

  static AppTheme? _instance;

  AppTheme._() {
    _instance = this;
  }

  static AppTheme get instance {
    return _instance ?? AppTheme._();
  }

  void setLight() {
    _currentTheme = LightTheme();
  }

  void setDark() {
    _currentTheme = DarkTheme();
  }

  void toggleTheme() {
    if (_currentTheme is LightTheme) {
      setDark();
    } else {
      setLight();
    }
  }

  @override
  Color get primary => _currentTheme.primary;

  @override
  Color get primaryVariant => _currentTheme.primaryVariant;

  @override
  Color get secondary => _currentTheme.secondary;

  @override
  Color get secondaryVariant => _currentTheme.secondaryVariant;

  @override
  Color get onPrimary => _currentTheme.onPrimary;

  @override
  Color get onSecondary => _currentTheme.onSecondary;

  @override
  String toString() {
    return 'AppTheme{primary: $primary, primaryVariant: $primaryVariant, secondary: $secondary, secondaryVariant: $secondaryVariant, onPrimary: $onPrimary, onSecondary: $onSecondary}';
  }
}
