import 'dart:math';

import 'round_peg.dart';
import 'square_peg.dart';

class SquarePegAdapter extends RoundPeg {
  final SquarePeg _peg;

  SquarePegAdapter(this._peg) : super(radius: -1);

  @override
  double get radius {
    return _peg.width * sqrt(2) / 2;
  }
}
