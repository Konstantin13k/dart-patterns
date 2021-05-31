import '../theme_mode.dart';

abstract class Theme {
  factory Theme(ThemeMode appTheme) {
    switch (appTheme) {
      case ThemeMode.light:
        return LightTheme();
      case ThemeMode.dark:
        return DarkTheme();
    }
  }

  void draw();
}

class LightTheme implements Theme {
  @override
  void draw() {
    print('Light Theme!');
  }
}

class DarkTheme implements Theme {
  @override
  void draw() {
    print('Dark Theme');
  }
}
