import 'icon_factories/icon_factory.dart';

void main() {
  final androidIconFactory = AndroidIconFactory();
  final iosIconFactory = IosIconFactory();

  var icon = androidIconFactory.createIcon();
  icon.onDraw();
  icon = iosIconFactory.createIcon();
  icon.onDraw();
}
