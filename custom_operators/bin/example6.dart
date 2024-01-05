void main(List<String> args) {
  print({'name': 'Manthan', 'age': 21} + {'address': 'dehradun'});
  print({'name': 'Manthan', 'age': 21} - {'age': 21});
  print({'name': 'Manthan', 'age': 21} - {'age': 22});
  print({'name': 'Manthan', 'age': 21} * 2);
}

extension MapOperations<K, V> on Map<K, V> {
  Map<K, V> operator +(Map<K, V> other) => {...this, ...other};

  Map<K, V> operator -(Map<K, V> other) {
    return {...this}..removeWhere((key, value) {
        return other.containsKey(key) && value == other[key];
      });
  }

  Iterable<Map<K, V>> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield this;
    }
  }
}
