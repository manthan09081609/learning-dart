void main(List<String> args) {
  final personName1 =
      personThing.mapIfOfType((Person p) => p.name) ?? 'Unknown Name';
  print(personName1);
  final personName2 =
      personThing.mapIfOfType((Animal p) => p.name) ?? 'Unknown Name';
  print(personName2);
}

abstract class Thing {
  final String name;

  const Thing({required this.name});
}

class Person extends Thing {
  final int age;

  const Person({required String name, required this.age}) : super(name: name);
}

class Animal extends Thing {
  final String specie;

  const Animal({required String name, required this.specie})
      : super(name: name);
}

const Thing personThing = Person(name: 'Manthan', age: 21);
const Thing animalThing = Animal(name: 'Motu', specie: 'Cat');

extension<T> on T {
  R? mapIfOfType<E, R>(R Function(E) f) {
    final shadow = this;
    if (shadow is E) {
      return f(shadow);
    } else {
      return null;
    }
  }
}
