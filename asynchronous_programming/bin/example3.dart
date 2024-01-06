void main(List<String> args) async {
  final length1 = await calculateLength(await getFullName());
  print(length1);
  print('--------------------------------------');
  final length2 = await getFullName().then((value) => calculateLength(value));
  print(length2);
  print('--------------------------------------');
}

Future<String> getFullName() => Future.delayed(
    const Duration(
      seconds: 1,
    ),
    () => 'Manthan Sharma');

Future<int> calculateLength(String value) => Future.delayed(
    const Duration(
      seconds: 1,
    ),
    () => value.length);
