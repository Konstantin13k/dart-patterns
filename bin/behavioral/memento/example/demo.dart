import 'pages/page.dart';
import 'screens/screen.dart';

void main() {
  final Page moviesListPage = MoviesList();
  final Screen screen = Screen(moviesListPage);

  screen.openNewPage(MovieDetails());
  screen.openNewPage(ActorDetails());

  screen.back();
  screen.back();
}
