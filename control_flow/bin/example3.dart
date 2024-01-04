void main(List<String> args) {
  const names = ['Manthan', 'Niyati', 'Saloni', 'Dixit'];

  for (final name in names) {
    print(name);
  }

  for (final name in names) {
    if (name.startsWith('N')) {
      continue;
    }
    print(name);
  }

  for (final name in names) {
    if (name == 'Saloni') {
      break;
    }
    print(name);
  }

  for (final name in names.reversed) {
    print(name);
  }

  for (int value in Iterable.generate(10)) {
    print(value);
  }
}
