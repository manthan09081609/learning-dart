void main(List<String> args) {
  final family1 = Person(name: 'vimla') + Person(name: 'rajesh');
  final family2 = Person(name: 'manthan') & Pet(name: 'motu');
  final family = family1 ^ family2;
  print(family);
}

class Person {
  final String name;

  Person({required this.name});

  @override
  String toString() {
    return 'Person (name = $name)';
  }
}

class Pet {
  final String name;

  Pet({required this.name});

  @override
  String toString() {
    return 'Pet (name = $name)';
  }
}

class Family {
  final List<Person> members;
  final List<Pet> pets;

  Family({required this.members, required this.pets});

  @override
  String toString() {
    return 'Family (Members = $members, Pets = $pets)';
  }
}

extension FamilyOnPerson on Person {
  Family operator +(Person other) => Family(
        members: [this, other],
        pets: [],
      );

  Family operator &(Pet pet) => Family(
        members: [this],
        pets: [pet],
      );
}

extension FamilyOnPet on Pet {
  Family operator &(Person member) => Family(
        members: [member],
        pets: [this],
      );
}

extension FamilyOnFamily on Family {
  Family operator +(Person member) =>
      Family(members: [...members, member], pets: [...pets]);

  Family operator &(Pet pet) =>
      Family(members: [...members], pets: [...pets, pet]);

  Family operator ^(Family other) => Family(
      members: [...members, ...other.members], pets: [...pets, ...other.pets]);
}
