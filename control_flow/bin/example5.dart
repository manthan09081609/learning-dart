void main(List<String> args) {
  const names = ['Manthan', 'Niyati', 'Saloni', 'Dixit'];

  int i = 0;
  do {
    print(names[i]);
    i++;
  } while (i < names.length);

  i = names.length - 1;
  do {
    print(names[i]);
    i--;
  } while (i >= 0);

  i = 0;
  do {
    print(names[i]);
    i++;
    if (i == 2) {
      break;
    }
  } while (i < names.length);

  i = 0;
  do {
    final name = names[i];
    i++;
    if (i == 2) {
      continue;
    }
    print(name);
  } while (i < names.length);
}
