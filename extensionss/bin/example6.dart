const json = {
  'name': 'Manthan Sharma',
  'age': 22,
};

void main(List<String> args) {
  final String? ageAsString =
      json.find<int>('age', (int age) => age.toString());
  print(ageAsString);

  final String helloName = json.find('name', (String name) => 'Hello, $name')!;
  print(helloName);
}

extension Find<K, V, R> on Map<K, V> {
  R? find<T>(
    K key,
    R? Function(T value) cast,
  ) {
    final val = this[key];
    if (val != null && val is T) {
      return cast(val as T);
    } else {
      return null;
    }
  }
}
