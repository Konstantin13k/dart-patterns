import 'follower.dart';

class PopularPerson {
  final String _name;
  final List<Follower> _followers = [];
  final List<String> _tweets = [];

  PopularPerson(this._name);

  void createTweet(String tweet) {
    _tweets.add(tweet);
    print('$_name posted tweet: $tweet');
    _followers.forEach((follower) {
      follower.checkTweet(tweet);
    });
  }

  void addFollower(Follower follower) {
    _followers.add(follower);
  }

  void removeFollower(String name) {
    _followers.removeWhere((follower) => follower.name == name);
  }

  List<String> get tweets => _tweets;
}
