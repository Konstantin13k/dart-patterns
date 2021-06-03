abstract class Device {
  bool isEnabled();

  void enable();

  void disable();

  int getVolume();

  void setVolume(int volume);

  int getChannel();

  void setChannel(int channel);
}

class Tv extends Device {
  bool _isEnabled = false;
  int _volume = 50;
  int _channel = 1;

  @override
  bool isEnabled() => _isEnabled;

  @override
  void enable() {
    _isEnabled = true;
  }

  @override
  void disable() {
    _isEnabled = false;
  }

  @override
  int getVolume() => _volume;

  @override
  void setVolume(int volume) {
    _volume = volume;
  }

  @override
  int getChannel() => _channel;

  @override
  void setChannel(int channel) {
    _channel = channel;
  }

  @override
  String toString() {
    return 'Tv{ isEnabled: $_isEnabled, volume: $_volume, channel: $_channel}';
  }
}

class Radio extends Device {
  bool _isEnabled = false;
  int _volume = 30;
  int _channel = 3;

  @override
  bool isEnabled() => _isEnabled;

  @override
  void enable() {
    _isEnabled = true;
  }

  @override
  void disable() {
    _isEnabled = false;
  }

  @override
  int getVolume() => _volume;

  @override
  void setVolume(int volume) {
    _volume = volume;
  }

  @override
  int getChannel() => _channel;

  @override
  void setChannel(int channel) {
    _channel = channel;
  }

  @override
  String toString() {
    return 'Radio{ isEnabled: $_isEnabled, volume: $_volume, channel: $_channel}';
  }
}
