void main(List<String> args) {
  final names = ['Manthan', 'Saloni', 'Niyati', 'Dixit'];

  final upperCaseNames = names.map((name) {
    print('Map Called');
    return name.toUpperCase();
  });

  for (final name in upperCaseNames.take(2)) {
    print(name);
  }
}
