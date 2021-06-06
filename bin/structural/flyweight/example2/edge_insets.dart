class EdgeInsets {
  final double left;
  final double right;
  final double top;
  final double bottom;

  const EdgeInsets.only({
    this.left = 0,
    this.right = 0,
    this.top = 0,
    this.bottom = 0,
  });

  const EdgeInsets.symmetric({double horizontal = 0, double vertical = 0})
      : left = horizontal,
        right = horizontal,
        top = vertical,
        bottom = vertical;

  @override
  String toString() {
    return 'EdgeInsets{left: $left, right: $right, top: $top, bottom: $bottom}';
  }
}
