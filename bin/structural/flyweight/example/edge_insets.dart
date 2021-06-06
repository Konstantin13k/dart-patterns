class EdgeInsets {
  static final List<EdgeInsets> _cache = [];

  final double left;
  final double right;
  final double top;
  final double bottom;

  EdgeInsets._newInstance(this.left, this.right, this.top, this.bottom) {
    _cache.add(this);
  }

  factory EdgeInsets.only({
    double left = 0,
    double right = 0,
    double top = 0,
    double bottom = 0,
  }) {
    for (final edgeInsets in _cache) {
      if (edgeInsets.left == left &&
          edgeInsets.right == right &&
          edgeInsets.top == top &&
          edgeInsets.bottom == bottom) {
        return edgeInsets;
      }
    }
    return EdgeInsets._newInstance(left, right, top, bottom);
  }

  factory EdgeInsets.symmetric({double horizontal = 0, double vertical = 0}) {
    return EdgeInsets.only(
      left: horizontal,
      right: horizontal,
      top: vertical,
      bottom: vertical,
    );
  }

  @override
  String toString() {
    return 'EdgeInsets{left: $left, right: $right, top: $top, bottom: $bottom}';
  }
}
