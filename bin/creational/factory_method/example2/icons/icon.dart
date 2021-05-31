abstract class Icon {
  void onDraw();
}

// Cupertino
class IosIcon extends Icon {
  @override
  void onDraw() {
    print('Ios icon');
  }
}

// Material
class AndroidIcon extends Icon {
  @override
  void onDraw() {
    print('Android icon');
  }
}
