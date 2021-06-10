import '../pages/page.dart';
import '../stack.dart';

class Screen {
  final Stack<ScreenState> _backStack = Stack();
  Page _page;

  Screen(this._page) {
    onDraw();
  }

  void onDraw() {
    _page.onDraw();
  }

  void openNewPage(Page page) {
    _backStack.push(ScreenState(this, _page));
    _page = page;
    onDraw();
  }

  void back() {
    if (_backStack.size > 1) {
      _backStack.pop().restore();
    }
  }
}

class ScreenState {
  final Screen _screen;
  final Page _page;

  ScreenState(this._screen, this._page);

  void restore() {
    _screen._page = _page;
    _screen.onDraw();
  }
}
