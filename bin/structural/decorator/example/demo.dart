import 'data/data_source.dart';
import 'data/data_source_decorator.dart';

void main() {
  final dataSource = FileDataSource('file');

  dataSource.writeData('some data');
  print(dataSource.readData());

  final encryptionDataSource = EncryptionDecorator(dataSource);
  encryptionDataSource.writeData('some encrypted data');
  print(encryptionDataSource.readData());

  final compressionDataSource = CompressionDecorator(dataSource);
  compressionDataSource.writeData('some compressed data');
  print(compressionDataSource.readData());
}
