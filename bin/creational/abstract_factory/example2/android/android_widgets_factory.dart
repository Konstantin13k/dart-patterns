import '../../example2/widgets/button.dart';
import '../../example2/widgets/icon.dart';
import '../../example2/widgets/widgets_factory.dart';
import 'android_button.dart';
import 'android_icon.dart';

class AndroidWidgetsFactory extends WidgetsFactory {
  @override
  Button createButton() {
    return AndroidButton();
  }

  @override
  Icon createIcon() {
    return AndroidIcon();
  }
}
