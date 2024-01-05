void main(List<String> args) {
  const person = Person(name: 'Manthan', age: 22);

  print(person.name);
  print(person.age);
}

class Person {
  final String name;
  final int age;

  const Person({required this.name, required this.age});
}
