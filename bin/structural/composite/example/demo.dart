import 'widgets/button_widget.dart';
import 'widgets/column_widget.dart';
import 'widgets/text_widget.dart';

void main() {
  final myBigWidget = Column(
    children: [
      Text('Header'),
      Column(
        children: [
          Button(name: 'Click me'),
          Text('line 1'),
          Text('line 2'),
          Text('line 3'),
          Text('line 4'),
        ],
      ),
      Text('Footer'),
    ],
  );

  myBigWidget.onDraw();
}
