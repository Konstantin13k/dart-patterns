import 'factories/widgets_factory.dart';

void main() {
  final androidWidgetsFactory = AndroidWidgetsFactory();
  final iosWidgetsFactory = IosWidgetsFactory();

  androidWidgetsFactory.createIcon().onDraw();
  androidWidgetsFactory.createButton().onDraw();

  iosWidgetsFactory.createIcon().onDraw();
  iosWidgetsFactory.createButton().onDraw();
}
