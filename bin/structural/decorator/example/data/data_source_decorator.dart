import 'dart:convert';
import 'dart:io';

import 'data_source.dart';

class DataSourceDecorator extends DataSource {
  final DataSource _dataSource;

  DataSourceDecorator(this._dataSource);

  @override
  void writeData(String data) {
    _dataSource.writeData(data);
  }

  @override
  String readData() {
    return _dataSource.readData();
  }
}

class EncryptionDecorator extends DataSourceDecorator {
  EncryptionDecorator(DataSource dataSource) : super(dataSource);

  @override
  void writeData(String data) {
    super.writeData(_encode(data));
  }

  @override
  String readData() {
    return _decode(super.readData());
  }

  String _encode(String data) {
    final bytes = utf8.encode(data);
    return base64.encode(bytes);
  }

  String _decode(String data) {
    return utf8.decode(base64.decode(data));
  }
}

class CompressionDecorator extends DataSourceDecorator {
  CompressionDecorator(DataSource dataSource) : super(dataSource);

  @override
  void writeData(String data) {
    super.writeData(_compress(data));
  }

  @override
  String readData() {
    return _decompress(super.readData());
  }

  String _compress(String data) {
    final codec = ZLibCodec();
    final bytes = utf8.encode(data);
    final compressedBytes = codec.encode(bytes);
    return base64Encode(compressedBytes);
  }

  String _decompress(String data) {
    final codec = ZLibCodec();
    final compressedBytes = base64Decode(data);
    final bytes = codec.decode(compressedBytes);
    return utf8.decode(bytes);
  }
}
