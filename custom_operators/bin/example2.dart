void main(List<String> args) {
  final names = ['Manthan', 'Saloni', 'Astha', 'Raman', 'Manvi'];
  final namestimes3 = names * 3;
  print(namestimes3);
}

extension Times<T> on Iterable<T> {
  Iterable<T> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield* this;
    }
  }
}
