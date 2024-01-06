void main(List<String> args) async {
  final db = Database();
  try {
    await db.open();
    final data = await db.getData();
    print(data);
  } on DatabaseNotOpenException {
    print('We forgot to open Database');
  } finally {
    await db.close();
  }
}

class Database {
  bool _isDbOpen = false;

  Future<void> open() {
    return Future.delayed(Duration(seconds: 1), () {
      _isDbOpen = true;
      print('Database Opened');
    });
  }

  Future<String> getData() {
    if (!_isDbOpen) {
      throw DatabaseNotOpenException();
    } else {
      return Future.delayed(Duration(seconds: 1), () => 'Data');
    }
  }

  Future<void> close() {
    return Future.delayed(Duration(seconds: 1), () {
      _isDbOpen = false;
      print('Database Closed');
    });
  }
}

class DatabaseNotOpenException implements Exception {
  @override
  String toString() => 'DatabaseNotOpenException';
}
