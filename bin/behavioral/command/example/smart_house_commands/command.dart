import '../smart_house.dart';

abstract class Command {
  final SmartHouse _smartHouse;

  Command(this._smartHouse);

  SmartHouse get smartHouse => _smartHouse;

  void execute();
}

class TurnOnLight extends Command {
  TurnOnLight(SmartHouse smartHouse) : super(smartHouse);

  @override
  void execute() {
    smartHouse.turnOnLight();
  }
}

class TurnOffLight extends Command {
  TurnOffLight(SmartHouse smartHouse) : super(smartHouse);

  @override
  void execute() {
    smartHouse.turnOffLight();
  }
}

class TurnOnKettle extends Command {
  TurnOnKettle(SmartHouse smartHouse) : super(smartHouse);

  @override
  void execute() {
    smartHouse.turnOnKettle();
  }
}

class Help extends Command {
  Help(SmartHouse smartHouse) : super(smartHouse);

  @override
  void execute() {
    print('----Help:');
    print('- turn on light');
    print('- turn off light');
    print('- turn on kettle');
    print('');
  }
}
