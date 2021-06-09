class FibonacciIterator extends Iterator<double> {
  int _currentIndex = 0;
  double _prevFibonacci = 0;
  double _currentFibonacci = 0;

  @override
  double get current => _currentFibonacci;

  @override
  bool moveNext() {
    _currentIndex++;
    _calculateFibonacci();
    return true;
  }

  void _calculateFibonacci() {
    if (_currentIndex == 0) {
      _currentFibonacci = 0;
    } else if (_currentIndex == 1) {
      _currentFibonacci = 1;
    } else {
      final double nextFibonacci = _prevFibonacci + _currentFibonacci;
      _prevFibonacci = _currentFibonacci;
      _currentFibonacci = nextFibonacci;
    }
  }
}
