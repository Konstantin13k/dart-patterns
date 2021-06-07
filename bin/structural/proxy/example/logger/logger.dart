abstract class Logger {
  void log(String data);
}

class ConsoleLogger extends Logger {
  @override
  void log(String data) {
    print(data);
  }
}
