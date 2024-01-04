void main(List<String> args) {
  final names = ['Manthan', 'Saloni', 'Niyati', 'Dixit'];

  print('---------------------------');
  for (final name in names) {
    print(name);
  }

  print('---------------------------');
  for (final name in names.reversed) {
    print(name);
  }

  print('---------------------------');
  if (names.contains('Manthan')) {
    print('Manthan in names');
  }

  print('---------------------------');
  final filterdNames = names.where((String name) => name.contains('n'));
  for (final name in filterdNames) {
    print(name);
  }

  print('---------------------------');
  print(names[1]);
  print(names.elementAt(1));

  print('---------------------------');
  try {
    print(names[4]);
    print(names.elementAt(4));
  } catch (e) {
    print(e);
  }
  print(names.elementAtOrNull(4));

  print('---------------------------');
  names.sublist(2).forEach(print);
  print('***************************');
  names.sublist(2, 4).forEach(print);

  print('---------------------------');
  final ages = [10, 20, 30, 40];
  ages.add(50);
  ages.add(60);
  print(ages);

  print('---------------------------');
  const names1 = ['Manthan', 'Saloni', 'Niyati', 'Dixit'];
  const names2 = ['Manthan', 'Saloni', 'Niyati', 'Dixit'];
  final names3 = ['Manthan', 'Saloni', 'Niyati', 'Dixit'];
  final names4 = ['Manthan', 'Saloni', 'Niyati', 'Dixit'];
  print(names1 == names2);
  print(names3 == names4);
  print([1, 2] == [1, 2]);
  print(const [1, 2] == const [1, 2]);

  print('---------------------------');
  final namesLength = names1.map((name) => name.length);
  print(namesLength);

  print('---------------------------');
  final sumAges =
      ages.fold(0, (previousValue, thisValue) => previousValue + thisValue);
  print(sumAges);
  final totalnamesLength =
      names.fold(0, (previouslength, name) => previouslength + name.length);
  print(totalnamesLength);

  print('---------------------------');
  final namesString = names.fold(
      '',
      (result, name) =>
          result == '' ? name.toUpperCase() : '$result ${name.toUpperCase()}');
  print(namesString);
}
