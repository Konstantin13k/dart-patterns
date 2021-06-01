abstract class Theme {
  static Theme createLightTheme() {
    return LightTheme.create();
  }

  static Theme createDarkTheme() {
    return DarkTheme();
  }

  void draw();
}

class LightTheme implements Theme {
  LightTheme.create();

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
