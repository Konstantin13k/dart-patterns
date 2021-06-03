import 'device.dart';

class Remote {
  final Device device;

  Remote(this.device);

  void togglePower() {
    if (device.isEnabled()) {
      device.disable();
    } else {
      device.enable();
    }
  }

  void volumeDown() {
    device.setVolume(device.getVolume() - 10);
  }

  void volumeUp() {
    device.setVolume(device.getVolume() + 10);
  }

  void channelDown() {
    device.setChannel(device.getChannel() - 1);
  }

  void channelUp() {
    device.setChannel(device.getChannel() + 1);
  }
}

class AdvancedRemote extends Remote {
  AdvancedRemote(Device device) : super(device);

  void mute() {
    device.setVolume(0);
  }
}
