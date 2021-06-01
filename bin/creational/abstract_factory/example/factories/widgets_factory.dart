import '../../../factory_method/example2/icons/icon.dart';
import '../widgets/button.dart';

abstract class WidgetsFactory {
  Button createButton();

  Icon createIcon();
}

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
