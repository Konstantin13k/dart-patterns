import 'config.dart';

void main(){
  final config = Config.getInstance();
  final config2 = Config.getInstance();

  print(config.databaseName);
  print(config == config2);
}