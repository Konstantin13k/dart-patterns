import 'theme_mode.dart';
import 'themes/theme.dart';

void main() {
  var currentTheme = Theme(ThemeMode.light);

  currentTheme.draw();

  currentTheme = Theme(ThemeMode.dark);

  currentTheme.draw();
}
