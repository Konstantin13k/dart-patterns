abstract class Result {
  const Result();

  static Result success() {
    return const Success();
  }

  static Result failure(String message) {
    return Failure(message);
  }

  bool isSuccess() => this is Success;

  bool isFailure() => this is Failure;

  Success asSuccess() => this as Success;

  Failure asFailure() => this as Failure;
}

class Success extends Result {
  const Success();
}

class Failure extends Result {
  final String message;

  Failure(this.message);
}
