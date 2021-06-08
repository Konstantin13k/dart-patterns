import '../result.dart';
import 'middleware.dart';

class RoleCheckMiddleware extends BaseMiddleware {
  @override
  Result check(String email, String password) {
    if (email == 'admin@gmail.com') {
      print('Hello, admin!');
      return Result.success();
    }
    print('Hello, user!');
    return checkNext(email, password);
  }
}
