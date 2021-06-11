import 'dart:io';

import 'order.dart';
import 'payment_strategies/pay_by_creditcard.dart';
import 'payment_strategies/pay_by_paypal.dart';
import 'payment_strategies/pay_strategy.dart';

final Map<int, int> priceOnProducts = {
  1: 2200,
  2: 1850,
  3: 1100,
  4: 900,
};
Order order = Order();
PayStrategy? payStrategy;

void main() {
  while (!order.isClosed) {
    int cost;
    String continueChoice;
    do {
      print(
          'Please, select a product: \n1 - Mother board \n2 - CPU \n3 - HDD \n4 - Memory \n');
      int choice = int.parse(stdin.readLineSync()!);
      cost = priceOnProducts[choice]!;
      print('Count: ');
      int count = int.parse(stdin.readLineSync()!);
      order.setTotalCost(cost * count);
      print('Do you wish to continue selecting products? Y/N: ');
      continueChoice = stdin.readLineSync()!;
    } while (continueChoice == 'y');

    if (payStrategy == null) {
      print('Please select a payment method: \n1 - PayPal \n2 - Credit Card');
      String paymentMethod = stdin.readLineSync()!;

      if (paymentMethod == '1') {
        payStrategy = PayByPayPal();
      } else {
        payStrategy = PayByCreditCard();
      }
    }

    order.processOrder(payStrategy!);

    print('Pay ${order.totalCost} units or Continue shopping? P/C: ');
    String proceed = stdin.readLineSync()!;
    if (proceed == 'p') {
      if (payStrategy!.pay(order.totalCost)) {
        print('Payment has been successful.');
      } else {
        print('FAIL! Please, check your data.');
      }
      order.isClosed = true;
    }
  }
}
