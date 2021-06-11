import 'dart:io';

import 'pay_strategy.dart';

class CreditCard {
  int _amount = 100000;
  final String _number;
  final String _date;
  final String _cvv;

  CreditCard(this._number, this._date, this._cvv);

  int get amount => _amount;

  set amount(int value) {
    _amount = value;
  }
}

class PayByCreditCard extends PayStrategy {
  CreditCard? _card;

  @override
  void collectPaymentDetails() {
    print('Enter the card number: ');
    String number = stdin.readLineSync()!;
    print('Enter the card expiration date \'mm/yy\': ');
    String date = stdin.readLineSync()!;
    print('Enter the CVV code: ');
    String cvv = stdin.readLineSync()!;
    _card = CreditCard(number, date, cvv);
  }

  @override
  bool pay(int paymentAmount) {
    if (cardIsPresent()) {
      print('Paying $paymentAmount using Credit Card.');
      _card!.amount = _card!.amount - paymentAmount;
      return true;
    } else {
      return false;
    }
  }

  bool cardIsPresent() {
    return _card != null;
  }
}
