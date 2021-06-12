import 'dart:convert';

import 'network.dart';

class Facebook extends Network {
  Facebook(String userName, String password) : super(userName, password);

  @override
  bool logIn(String userName, String password) {
    print('\nChecking user\'s parameters');
    print('Name: ${this.userName}');
    print('Password: ${'*' * this.password.length}');
    print('\n\nLogIn success on Facebook');
    return true;
  }

  @override
  bool sendData(List<int> data) {
    print('Message: \'${utf8.decode(data)}\' was posted on Facebook');
    return true;
  }

  @override
  void logOut() {
    print('User: \'${this.userName}\' was logged out from Facebook');
  }
}
