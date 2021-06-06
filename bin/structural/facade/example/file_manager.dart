import 'dart:convert';
import 'dart:io';

class FileManager {
  void writeToFile(File file, String data) {
    final codec = ZLibCodec();
    final bytes = utf8.encode(data);
    final compressedBytes = codec.encode(bytes);
    final encodedData = base64Encode(compressedBytes);

    try {
      file.writeAsStringSync(encodedData);
    } on IOException catch (e) {
      print(e);
    }
  }

  String readFile(File file) {
    final codec = ZLibCodec();
    try {
      final encodedData = file.readAsStringSync();
      final compressedBytes = base64Decode(encodedData);
      final bytes = codec.decode(compressedBytes);

      return utf8.decode(bytes);
    } on IOException catch (e) {
      print(e);
      return '';
    }
  }
}
