import 'round_peg.dart';

class RoundHole {
  final double radius;

  RoundHole({required this.radius});

  bool fits(RoundPeg peg) {
    return radius >= peg.radius;
  }
}
