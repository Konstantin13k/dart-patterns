class Config {
  String databaseName = 'movies_database';

  static Config? _instance;

  Config._internal() {
    print('Config initialized!');
  }

  static Config getInstance() {
    _instance ??= Config._internal();
    return _instance!;
  }
}
