import 'follower.dart';
import 'popular_person.dart';

void main() {
  final PopularPerson popularPerson = PopularPerson('Gleb');

  final Follower follower1 = Follower('Константин');
  final Follower follower2 = Follower('Артём');
  final Follower follower3 = Follower('Виталий');
  final Follower follower4 = Follower('Евгений');
  final Follower follower5 = Follower('Сергей');
  final Follower follower6 = Follower('Антон');
  final Follower follower7 = Follower('Олег');

  popularPerson.addFollower(follower1);
  popularPerson.addFollower(follower2);
  popularPerson.addFollower(follower3);
  popularPerson.addFollower(follower4);
  popularPerson.addFollower(follower5);
  popularPerson.addFollower(follower6);
  popularPerson.addFollower(follower7);

  popularPerson.createTweet('Сходка каждый понедельник в 18:00');
}
