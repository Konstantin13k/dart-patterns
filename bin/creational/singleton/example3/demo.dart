import 'config.dart';

void main(){
  final config = Config.instance;
  final config2 = Config.instance;

  print(config.databaseName);
  print(config == config2);
}