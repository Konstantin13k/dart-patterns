import '../icons/icon.dart';

abstract class IconFactory {
  Icon createIcon();
}

class IosIconFactory extends IconFactory {
  @override
  Icon createIcon() => IosIcon();
}

class AndroidIconFactory extends IconFactory {
  @override
  Icon createIcon() => AndroidIcon();
}
