import '../../example2/widgets/button.dart';
import '../../example2/widgets/icon.dart';
import '../../example2/widgets/widgets_factory.dart';
import 'ios_button.dart';
import 'ios_icon.dart';

class IosWidgetsFactory extends WidgetsFactory {
  @override
  Button createButton() {
    return IosButton();
  }

  @override
  Icon createIcon() {
    return IosIcon();
  }
}
