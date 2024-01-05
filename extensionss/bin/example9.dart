void main(List<String> args) {
  final p = Person(name: 'manthan', age: 21);
  // print(p.description);
  print(Short(p).description);
  print(Long(p).description);
}

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});
}

// Short Description
extension Short on Person {
  String get description => '$name ($age)';
}

// Long Description
extension Long on Person {
  String get description => '$name is $age years old';
}
