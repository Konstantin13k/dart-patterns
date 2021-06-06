import 'dart:io';

import 'file_manager.dart';

void main(){
  final fileManager = FileManager();
  final file = File('file');

  fileManager.writeToFile(file, 'some data');
  print(fileManager.readFile(file));
}