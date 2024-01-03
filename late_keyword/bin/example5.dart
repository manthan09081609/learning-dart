void main(List<String> args) {
  final p = Person();
  p.description = 'Person Description 1';
  print(p.description);
  p.description = 'Person Description 2';
  print(p.description);

  final d = Dog();
  d.description = 'Dog Description 1';
  print(d.description);
  try {
    d.description = 'Dog Description 2';
    print(d.description);
  } catch (e) {
    print(e);
  }
}

class Person {
  late String description;
}

class Dog {
  late final String description;
}
