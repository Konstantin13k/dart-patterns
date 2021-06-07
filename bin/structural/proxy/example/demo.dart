import 'datasource/datasource.dart';
import 'datasource/datasource_logger.dart';
import 'logger/logger.dart';

void main() {
  final consoleLogger = ConsoleLogger();
  final dataSource = DataSourceLogger(
    dataSource: DataSourceImpl(),
    logger: consoleLogger,
  );

  test(dataSource);
}

void test(DataSource dataSource) {
  dataSource.insert(1, 'some data');
  dataSource.update(1, 'some updated data');
  print(dataSource.select(1));
  dataSource.delete(1);
  print(dataSource.select(1));
}
