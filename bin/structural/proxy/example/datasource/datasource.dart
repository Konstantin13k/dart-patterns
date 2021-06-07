abstract class DataSource {
  void insert(int id, String data);

  void update(int id, String newData);

  String select(int id);

  bool delete(int id);
}

class DataSourceImpl extends DataSource {
  final Map<int, String> data = {};

  @override
  void insert(int id, String data) {
    this.data[id] = '';
  }

  @override
  void update(int id, String newData) {
    data[id] = newData;
  }

  @override
  String select(int id) {
    return data[id] ?? '';
  }

  @override
  bool delete(int id) {
    return data.remove(id) != null;
  }
}
