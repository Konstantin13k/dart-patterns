import '../result.dart';
import 'middleware.dart';

class ThrottlingMiddleware extends BaseMiddleware {
  final int _requestPerMinute;
  int _request = 0;
  int _currentTime = 0;

  ThrottlingMiddleware(this._requestPerMinute) {
    _currentTime = DateTime.now().millisecondsSinceEpoch;
  }

  @override
  Result check(String email, String password) {
    if (DateTime.now().millisecondsSinceEpoch > _currentTime + 60000) {
      _request = 0;
      _currentTime = DateTime.now().millisecondsSinceEpoch;
    }

    _request++;
    if (_request > _requestPerMinute) {
      return Result.failure('Request limit exceeded!');
    }
    return checkNext(email, password);
  }
}
