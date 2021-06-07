
import '../logger/logger.dart';
import 'datasource.dart';

class DataSourceLogger extends DataSource {
  final DataSource dataSource;
  final Logger logger;

  DataSourceLogger({required this.dataSource, required this.logger});

  @override
  void insert(int id, String data) {
    dataSource.insert(id, data);
    logger.log('Insert request: id: $id, data: $data');
  }

  @override
  void update(int id, String newData) {
    dataSource.update(id, newData);
    logger.log('Update request: id: $id, data: $newData');
  }

  @override
  String select(int id) {
    final data = dataSource.select(id);
    if (data.isNotEmpty) {
      logger.log('Select request: id: $id, data: $data');
    } else {
      logger.log('Select request: id: $id, data: not found');
    }
    return data;
  }

  @override
  bool delete(int id) {
    final deleted = dataSource.delete(id);
    logger.log('Delete request: id:$id, success: $deleted');
    return deleted;
  }
}
