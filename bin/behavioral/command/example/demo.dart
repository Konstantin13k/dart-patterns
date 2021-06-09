import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'smart_house.dart';
import 'smart_house_commands/command.dart';

final Map<String, Command> commands = {};

void main() {
  _initCommands();

  print('Input command: ');
  readLine().listen((commandName) {
    final Command? command = commands[commandName];
    if (command == null) {
      print('Command not found!');
    } else {
      command.execute();
    }
  });
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void _initCommands() {
  final SmartHouse smartHouse = SmartHouse();

  commands['turn on light'] = TurnOnLight(smartHouse);
  commands['turn off light'] = TurnOffLight(smartHouse);
  commands['turn on kettle'] = TurnOnKettle(smartHouse);
  commands['help'] = Help(smartHouse);
}
