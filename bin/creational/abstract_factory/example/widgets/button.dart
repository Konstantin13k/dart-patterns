abstract class Button {
  void onDraw();
}

class AndroidButton extends Button {
  @override
  void onDraw() {
    print('Android button');
  }
}

class IosButton extends Button {
  @override
  void onDraw() {
    print('IOS button');
  }
}
