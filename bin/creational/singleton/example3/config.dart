class Config {
  String databaseName = 'movies_database';

  Config._internal();

  static final Config _instance = Config._internal();

  static Config get instance {
    return _instance;
  }
}
