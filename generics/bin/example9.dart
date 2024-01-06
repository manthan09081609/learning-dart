void main(List<String> args) {
  print(1.toInteger() == 1);
  print(1.1.toInteger() == 1);
  print('1'.toInteger() == 1);
  print([1, 0].toInteger() == 1);
  print(['1', '0'].toInteger() == 1);
}

extension ToInt on Object {
  int toInteger() {
    final list = [
      if (this is Iterable<Object>)
        ...this as Iterable<Object>
      else if (this is int)
        this as int
      else
        (double.tryParse(toString()) ?? 0.0).round()
    ];
    final intList =
        list.map((e) => (double.tryParse(e.toString()) ?? 0.0).round());
    final result = intList.reduce((a, b) => a + b);
    return result;
  }
}
