abstract class Page {
  void onDraw();
}

class MoviesList extends Page {
  @override
  void onDraw() {
    print('Movies List');
  }
}

class MovieDetails extends Page {
  @override
  void onDraw() {
    print('Movie Details');
  }
}

class ActorDetails extends Page {
  @override
  void onDraw() {
    print('Actor Details');
  }
}
