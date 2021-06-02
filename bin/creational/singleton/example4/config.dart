class Config {
  String databaseName = 'movies_database';

  Config._internal();

  static final Config _instance = Config._internal();

  factory Config() => _instance;
}
