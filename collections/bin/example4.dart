void main(List<String> args) {
  final p1 = Person(name: 'Mantham', age: 21);
  final p2 = Person(name: 'Mantham', age: 21);

  print(p1.hashCode);
  print(p2.hashCode);

  final persons = {p1, p2};
  print(persons);
}

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  @override
  String toString() {
    return 'Person : $name, $age';
  }

  @override
  int get hashCode => Object.hash(name, age);
}
