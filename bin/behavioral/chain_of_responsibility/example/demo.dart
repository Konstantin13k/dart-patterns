import 'dart:io';

import 'chain/middleware.dart';
import 'chain/role_check_middleware.dart';
import 'chain/throttling_middleware.dart';
import 'chain/user_exists_middleware.dart';
import 'result.dart';
import 'server.dart';

final Server server = Server();

void main() {
  _initServer();

  bool success = false;
  do {
    print('Enter email: ');
    final String email = stdin.readLineSync() ?? '';
    print('Input password: ');
    final String password = stdin.readLineSync() ?? '';

    final Result loginResult = server.logIn(email, password);

    if (loginResult.isSuccess()) {
      success = true;
    } else {
      print(
          'Sorry, something went wrong: ${loginResult.asFailure().message}');
    }
  } while (!success);
}

void _initServer() {
  server.register('admin@gmail.com', 'root');
  server.register('user@gmail.com', '123');

  final BaseMiddleware middleware = ThrottlingMiddleware(2);
  final BaseMiddleware userExistsMiddleware = UserExistsMiddleware(server);
  final BaseMiddleware roleCheckMiddleware = RoleCheckMiddleware();

  userExistsMiddleware.linkWith(roleCheckMiddleware);
  middleware.linkWith(userExistsMiddleware);

  server.middleware = middleware;
}
