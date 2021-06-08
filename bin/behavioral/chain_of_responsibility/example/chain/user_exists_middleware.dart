import '../result.dart';
import '../server.dart';
import 'middleware.dart';

class UserExistsMiddleware extends BaseMiddleware {
  final Server _server;

  UserExistsMiddleware(this._server);

  @override
  Result check(String email, String password) {
    if (!_server.hasEmail(email)) {
      return Result.failure('This email is not registered!');
    }
    if (!_server.isValidPassword(email, password)) {
      return Result.failure('Wrong password!');
    }
    return checkNext(email, password);
  }
}
