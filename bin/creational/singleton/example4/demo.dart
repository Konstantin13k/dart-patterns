import 'config.dart';

void main(){
  final config = Config();
  final config2 = Config();

  print(config.databaseName);
  print(config == config2);
}