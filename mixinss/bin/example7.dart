import 'package:uuid/uuid.dart';

void main(List<String> args) {
  final uuid1 = Uuid().v4();
  final uuid2 = Uuid().v4();

  final person1 = Person(id: uuid1, name: 'Manthan', age: 22);
  final person1Again = Person(id: uuid1, name: 'manthan', age: 22);
  final person2 = Person(id: uuid2, name: 'Manthan', age: 22);

  print(person1 == person2);
  print(person1 == person1Again);
}

mixin HasIdentifier {
  String get id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HasIdentifier &&
          runtimeType == other.runtimeType &&
          id == other.id);
}

class Person with HasIdentifier {
  @override
  final String id;

  final String name;
  final int age;

  const Person({required this.id, required this.name, required this.age});
}
