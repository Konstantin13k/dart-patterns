class Note {
  final String _title;

  Note(this._title);

  String get title => _title;

  @override
  String toString() {
    return 'Note{ title: $_title}';
  }
}
