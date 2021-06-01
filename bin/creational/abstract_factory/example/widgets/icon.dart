abstract class Icon {
  void onDraw();
}

class AndroidIcon extends Icon {
  @override
  void onDraw() {
    print('Android icon');
  }
}

class IosIcon extends Icon {
  @override
  void onDraw() {
    print('IOS icon');
  }
}
