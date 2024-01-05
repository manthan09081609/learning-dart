void main(List<String> args) {
  final c = Cat(age: 12);
  print(c.age);
  c.incrementAge();
  print(c.age);
}

mixin HasAge {
  abstract int age;
  void incrementAge() => age++;
}

class Cat with HasAge {
  @override
  int age;

  Cat({required this.age});
}
