void main(List<String> args) {
  final one = KeyValue(1, 2);
  print(one);
  final two = KeyValue(1, 2.2);
  print(two);
  final three = KeyValue(1, 'one');
  print(three);
  final KeyValue four = KeyValue(1, 2);
  print(four);
}

typedef KeyValue<K, V> = MapEntry<K, V>;
