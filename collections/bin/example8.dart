void main(List<String> args) {
  print('---------------------------------');
  final itearble1 = Iterable.generate(20, (i) => generateName(i));
  print(itearble1);

  print('---------------------------------');
  final itearble2 = Iterable.generate(20, (i) => generateName(i));
  for (final name in itearble2.take(2)) {
    print(name);
  }
}

String generateName(int i) {
  print('generateName Called $i');
  return 'Manthan #$i';
}
