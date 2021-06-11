import 'app_theme.dart';

void main() {
  final AppTheme appTheme = AppTheme.instance;
  print(appTheme);

  appTheme.setDark();
  print(appTheme);

  appTheme.toggleTheme();
  print(appTheme);
}
