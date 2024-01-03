void main(List<String> args) {
  print(getFullName(null, null));
  print(getFullName(null, 'Sharma'));
  print(getFullName('Manthan', null));
  print(getFullName('Manthan', 'Sharma'));
}

String getFullName(String? firstName, String? lastName) =>
    withAll(
      [firstName, lastName],
      (names) => names.join(' '),
    ) ??
    'Empty';

T? withAll<T>(List<T?> optionals, T Function(List<T>) callback) =>
    optionals.any((e) => e == null) ? null : callback(optionals.cast<T>());
