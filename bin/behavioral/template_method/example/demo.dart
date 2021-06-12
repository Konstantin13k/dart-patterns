import 'dart:io';

import 'networks/facebook.dart';
import 'networks/network.dart';
import 'networks/twitter.dart';

void main() {
  Network? network;

  print('Input user name: ');
  String userName = stdin.readLineSync()!;
  print('Input password: ');
  String password = stdin.readLineSync()!;

  print('Input message: ');
  String message = stdin.readLineSync()!;
  print(
      '\nChoose social network for posting message.\n1 - Facebook\n2 - Twitter');
  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    network = Facebook(userName, password);
  } else if (choice == 2) {
    network = Twitter(userName, password);
  }

  network?.post(message);
}
