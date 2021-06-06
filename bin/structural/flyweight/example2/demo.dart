import 'edge_insets.dart';
import 'widgets/widget.dart';

void main() {
  final text = Text(
    'Some text',
    margin: const EdgeInsets.only(left: 10, right: 10),
    padding: const EdgeInsets.only(left: 10, top: 10),
  );

  final button = Button(
    name: 'Some button',
    margin: const EdgeInsets.symmetric(horizontal: 10),
    padding: const EdgeInsets.only(left: 10, top: 10),
  );

  print(text);
  print(button);

  print(text.margin == button.margin);
  print(text.padding == button.padding);

  print(text.margin == text.padding);
}
