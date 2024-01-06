void main(List<String> args) async {
  await for (final name in allNames()) {
    print(name);
  }
}

Stream<String> maleNames() async* {
  yield 'Manthan';
  yield 'Raman';
  yield 'Ashutosh';
}

Stream<String> femaleNames() async* {
  yield 'Saloni';
  yield 'Manvi';
  yield 'Niyati';
}

// Stream<String> allNames() async* {
//   await for (final maleName in maleNames()) {
//     yield maleName;
//   }
//   await for (final femaleName in femaleNames()) {
//     yield femaleName;
//   }
// }

Stream<String> allNames() async* {
  yield* maleNames();
  yield* femaleNames();
}
