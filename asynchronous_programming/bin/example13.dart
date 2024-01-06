void main(List<String> args) async {
  // final result = getNames().asyncMap((name) => extractCharacters(name));
  // await for (final l in result) {
  //   print(l);
  // }

  final result = await getNames()
      .asyncMap((name) => extractCharacters(name))
      .fold('', (previous, element) {
    final elements = element.join('|');
    return previous == '' ? elements : '$previous $elements';
  });
  print(result);
}

Stream<String> getNames() async* {
  yield 'Manthan';
  yield 'Nikhil';
  yield 'Dixit';
}

Future<List<String>> extractCharacters(String from) async {
  final characters = <String>[];

  for (final char in from.split('')) {
    await Future.delayed(Duration(milliseconds: 100));
    characters.add(char);
  }

  return characters;
}
