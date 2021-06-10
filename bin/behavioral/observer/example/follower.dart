class Follower {
  final String _name;

  Follower(this._name);

  void checkTweet(String tweet) {
    print('$_name checked tweet: $tweet');
  }

  String get name => _name;
}
