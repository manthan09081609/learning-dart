import 'dart:mirrors';

void main(List<String> args) {
  const person = Person(name: 'manthan', age: 22);
  const house = House(address: '166/1, gandhi grama', rooms: 6);
  print(person);
  print(house);
}

mixin HasDescription {
  @override
  String toString() {
    final reflection = reflect(this);

    final thisType = MirrorSystem.getName(reflection.type.simpleName);

    final variables =
        reflection.type.declarations.values.whereType<VariableMirror>();

    final properties = <String, dynamic>{
      for (final field in variables)
        field.asKey: reflection
            .getField(
              field.simpleName,
            )
            .reflectee
    }.toString();

    return '$thisType = $properties';
  }
}

extension AsKey on VariableMirror {
  String get asKey {
    final fieldName = MirrorSystem.getName(simpleName);
    final fieldType = MirrorSystem.getName(type.simpleName);
    return '$fieldName ($fieldType)';
  }
}

class Person with HasDescription {
  final String name;
  final int age;

  const Person({required this.name, required this.age});
}

class House with HasDescription {
  final String address;
  final int rooms;

  const House({required this.address, required this.rooms});
}
