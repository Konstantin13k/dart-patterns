import '../example2/widgets/widgets_factory.dart';
import 'android/android_widgets_factory.dart';
import 'ios/ios_widgets_factory.dart';

void main() {
  WidgetsFactory widgetsFactory = AndroidWidgetsFactory();
  drawWidgets(widgetsFactory);

  widgetsFactory = IosWidgetsFactory();
  drawWidgets(widgetsFactory);
}

void drawWidgets(WidgetsFactory widgetsFactory) {
  widgetsFactory.createIcon().onDraw();
  widgetsFactory.createButton().onDraw();
}
