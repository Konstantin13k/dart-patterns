import 'round_hole.dart';
import 'round_peg.dart';
import 'square_peg.dart';
import 'square_peg_adapter.dart';

void main() {
  final hole = RoundHole(radius: 7);

  final roundPeg = RoundPeg(radius: 5);
  print(hole.fits(roundPeg));

  final smallSquarePeg = SquarePeg(width: 5);
  final largeSquarePeg = SquarePeg(width: 10);

  // hole.fits(smallSquarePeg); // Ошибка компиляции

  final smallSquareAdapter = SquarePegAdapter(smallSquarePeg);
  final largeSquareAdapter = SquarePegAdapter(largeSquarePeg);
  print(hole.fits(smallSquareAdapter));
  print(hole.fits(largeSquareAdapter));
}
