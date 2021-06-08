import 'chain/middleware.dart';
import 'result.dart';

class Server {
  final Map<String, String> _users = {};

  // don't use!!!!
  /* Middleware? __middleware;

  Middleware get _middleware => __middleware!;*/

  // use!
  late Middleware _middleware;

  set middleware(Middleware middleware) {
    _middleware = middleware;
  }

  Result logIn(String email, String password) {
    final Result loginResult = _middleware.check(email, password);
    if (loginResult.isSuccess()) {
      print('Authorization have been successful!');
    }
    return loginResult;
  }

  void register(String email, String password) {
    _users[email] = password;
  }

  bool hasEmail(String email) {
    return _users.containsKey(email);
  }

  bool isValidPassword(String email, String password) {
    return _users[email] == password;
  }
}
