void main(List<String> args) async {
  int agesSum1 = 0;
  await for (final age in getAllAges()) {
    agesSum1 += age;
  }
  print('Sum of Ages : $agesSum1');
  print('--------------------------');
  int agesSum2 = await getAllAges().reduce(add);
  print('Sum of Ages : $agesSum2');
}

int add(int a, int b) => a + b;

Stream<int> getAllAges() async* {
  for (var i = 10; i <= 50; i += 10) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
