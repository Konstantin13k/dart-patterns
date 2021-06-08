import '../result.dart';

abstract class Middleware {
  Result check(String email, String password);
}

abstract class BaseMiddleware extends Middleware {
  Middleware? _next;

  Middleware linkWith(Middleware next) {
    _next = next;
    return next;
  }

  Result checkNext(String email, String password) {
    return _next?.check(email, password) ?? Result.success();
  }
}
