import 'dart:collection';

class Stack<T> {
  final Queue<T> _stack = Queue();

  void push(T element) {
    _stack.addLast(element);
  }

  T pop() {
    return _stack.removeLast();
  }

  int get size => _stack.length;
}
