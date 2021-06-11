import 'dart:io';

import 'pay_strategy.dart';

class PayByPayPal extends PayStrategy {
  static final Map<String, String> DATA_BASE = {'123': 'user@gmail.com'};
  String? _email;
  String? _password;
  bool _signedIn = false;

  @override
  void collectPaymentDetails() {
    while (!_signedIn) {
      print('Enter the user\'s email: ');
      _email = stdin.readLineSync();
      print('Enter the password: ');
      _password = stdin.readLineSync();
      if (_verify()) {
        print('Data verification has been successful.');
      } else {
        print('Wrong email or password!');
      }
    }
  }

  bool _verify() {
    _signedIn = DATA_BASE[_password] == _email;
    return _signedIn;
  }

  @override
  bool pay(int paymentAmount) {
    if (_signedIn) {
      print('Paying $paymentAmount using PayPal.');
      return true;
    } else {
      return false;
    }
  }
}
