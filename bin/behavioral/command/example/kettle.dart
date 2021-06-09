import 'dart:async';

class Kettle {
  bool _isEnabled = false;

  void turnOn() {
    if (_isEnabled) {
      _notifyUser('The kettle is already on!');
      return;
    }
    startTimer();
  }

  void startTimer() {
    _isEnabled = true;
    Timer(Duration(seconds: 30), () {
      _notifyUser('The kettle is boiling!');
      _isEnabled = false;
    });
  }

  void _notifyUser(String message) {
    print('Smart House: $message');
  }
}
