void main(List<String> args) {
  final p = Person(name: 'K', age: 21);
  final d = Dog(name: 'K', age: 21);

  print(p.hashCode);
  print(d.hashCode);

  final beings = {p, d};
  print(beings);
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

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Person && name == other.name && age == other.age);
  }
}

class Dog {
  final String name;
  final int age;

  Dog({required this.name, required this.age});

  @override
  String toString() {
    return 'Dog : $name, $age';
  }

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Dog && name == other.name && age == other.age);
  }
}
