void main(List<String> args) async {
  final names3Times = getNames().asyncExpand((name) => times3(name));

  await for (final names3 in names3Times) {
    print(names3);
  }
}

Stream<String> getNames() async* {
  yield 'Manthan';
  yield 'Nikhil';
  yield 'Dixit';
}

Stream<String> times3(String value) =>
    Stream.fromIterable(Iterable.generate(3, (_) => value));
