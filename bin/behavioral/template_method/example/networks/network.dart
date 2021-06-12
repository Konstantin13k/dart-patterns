import 'dart:convert';

abstract class Network {
  final String _userName;
  final String _password;

  Network(this._userName, this._password);

  bool post(String message) {
    if (logIn(_userName, _password)) {
      bool result = sendData(utf8.encode(message));
      logOut();
      return result;
    }
    return false;
  }

  bool logIn(String userName, String password);

  bool sendData(List<int> data);

  void logOut();

  String get userName => _userName;

  String get password => _password;
}
