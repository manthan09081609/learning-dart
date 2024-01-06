void main(List<String> args) async {
  final allNames = await getNames().toList();
  print(allNames);
}

Stream<String> getNames() async* {
  yield 'Manthan';
  yield 'Niyati';
  yield 'Raman';
}
