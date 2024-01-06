void main(List<String> args) {
  final int intVal = eitherReturnIntDouble();
  final double doubleVal = eitherReturnIntDouble();
  print(intVal);
  print(doubleVal);
}

T eitherReturnIntDouble<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 1.1 as T;
    default:
      throw Exception('Not Supported');
  }
}
