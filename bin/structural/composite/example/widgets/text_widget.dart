import 'widget.dart';

class Text extends Widget {
  final String data;

  Text(this.data);

  @override
  void onDraw() {
    print(this);
  }

  @override
  String toString() {
    return 'TextWidget{ data: $data }';
  }
}
