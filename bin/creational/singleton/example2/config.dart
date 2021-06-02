class Config {
  String databaseName = 'movies_database';

  static Config? _instance;

  Config._internal() {
    _instance = this;
  }

  static Config getInstance() {
    return _instance ?? Config._internal();
  }
}
