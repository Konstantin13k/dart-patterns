import 'payment_strategies/pay_strategy.dart';

class Order {
  int _totalCost = 0;
  bool _isClosed = false;

  void processOrder(PayStrategy strategy) {
    strategy.collectPaymentDetails();
  }

  void setTotalCost(int cost) {
    _totalCost += cost;
  }

  int get totalCost => _totalCost;

  bool get isClosed => _isClosed;

  set isClosed(bool isClosed) {
    _isClosed = isClosed;
  }
}
