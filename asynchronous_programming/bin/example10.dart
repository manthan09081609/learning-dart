import 'dart:async';

void main(List<String> args) async {
  await for (final name in names) {
    print(name.toUpperCase());
  }
  print('--------------------');
  await for (final name in names.map((name) => name.toUpperCase())) {
    print(name);
  }
  print('--------------------');

  await for (final name in names.capitalized) {
    print(name);
  }
  print('--------------------');

  await for (final name in names.capitalizedUsingMap) {
    print(name);
  }
  print('--------------------');

  await for (final l in names.lenghtString) {
    print(l);
  }
  print('--------------------');

  await for (final l in names.lenghtStringUsingMap) {
    print(l);
  }
  print('--------------------');
}

Stream<String> names = Stream.fromIterable([
  'Manthan',
  'Saloni',
  'Astha',
]);

extension on Stream<String> {
  Stream<String> get capitalized => transform(ToUpperCase());

  Stream<String> get capitalizedUsingMap => map((value) => value.toUpperCase());

  Stream<int> get lenghtString => transform(StringLength());

  Stream<int> get lenghtStringUsingMap => map((value) => value.length);
}

class ToUpperCase extends StreamTransformerBase<String, String> {
  @override
  Stream<String> bind(Stream<String> stream) {
    return stream.map(
      (value) => value.toUpperCase(),
    );
  }
}

class StringLength extends StreamTransformerBase<String, int> {
  @override
  Stream<int> bind(Stream<String> stream) {
    return stream.map(
      (s) => s.length,
    );
  }
}
