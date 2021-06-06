import 'dart:io';

abstract class DataSource {
  void writeData(String data);

  String readData();
}

class FileDataSource extends DataSource {
  final String _fileName;

  FileDataSource(this._fileName);

  @override
  void writeData(String data) {
    final file = File(_fileName);
    try {
      file.writeAsStringSync(data);
    } on IOException catch (e) {
      print(e);
    }
  }

  @override
  String readData() {
    final file = File(_fileName);
    try {
      return file.readAsStringSync();
    } on IOException catch (e) {
      print(e);
    }
    return '';
  }
}
