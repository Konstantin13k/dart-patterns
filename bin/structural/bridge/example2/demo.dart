import 'device.dart';
import 'remote.dart';

void main() {
  final tv = Tv();
  final remote = Remote(tv);
  remote.togglePower();

  final radio = Radio();
  final advancedRemote = AdvancedRemote(radio);
  advancedRemote.mute();

  print(tv);
  print(radio);
}
