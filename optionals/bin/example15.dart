void main(List<String> args) {
  final String? firstName = 'Manthan';
  final String? lastName = 'Sharma';

  final fullName = firstName.flatMap(
        (f) => lastName.flatMap(
          (l) => '$f $l',
        ),
      ) ??
      'Either firstName or lastName or both are null';
  print(fullName);
}

extension FlatMap<T> on T? {
  R? flatMap<R>(R? Function(T) callback) {
    final shadow = this;
    if (shadow == null) {
      return null;
    } else {
      return callback(shadow);
    }
  }
}
