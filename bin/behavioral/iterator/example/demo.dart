import 'fibonacci_iterator.dart';

void main() {
  final FibonacciIterator fibonacciIterator = FibonacciIterator();

  for (int i = 0; i < 100; i++) {
    print('$i : ${fibonacciIterator.current}');
    fibonacciIterator.moveNext();
  }
}
