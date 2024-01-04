void main(List<String> args) {
  const names = ['Manthan', 'Niyati', 'Saloni', 'Dixit'];

  int i = 0;
  while (i <= names.length) {
    print(names[i]);
    i++;
  }

  i = names.length - 1;
  while (i >= 0) {
    print(names[i]);
    i--;
  }
}
