import 'kettle.dart';

class SmartHouse {
  bool _light = false;
  final Kettle _kettle = Kettle();

  void turnOnLight() {
    if (_light) {
      _notifyUser('The light is already on!');
    } else {
      _notifyUser('Turn on the light!');
      _light = true;
    }
  }

  void turnOffLight() {
    if (!_light) {
      _notifyUser('The light is already off!');
    } else {
      _notifyUser('Turn off the light!');
      _light = false;
    }
  }

  void turnOnKettle() {
    _kettle.turnOn();
  }

  void _notifyUser(String message) {
    print('Smart House: $message');
  }
}
