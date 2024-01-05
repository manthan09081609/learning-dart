void main(List<String> args) {
  final cats = <Cat>{
    Cat(age: 10, name: 'Motu'),
    Cat(age: 12, name: 'Tunu'),
    Cat(age: 10, name: 'Motu'),
  };
  print(cats);
}

enum PetType {
  cat,
  dog,
}

mixin Pet {
  String get name;
  int get age;
  PetType get type;

  @override
  String toString() => 'Pet ($type), name=$name, age=$age';

  @override
  int get hashCode => Object.hash(name, age, type);

  @override
  bool operator ==(Object other) => other.hashCode == hashCode;
}

class Cat with Pet {
  @override
  final int age;

  @override
  final String name;

  @override
  final PetType type;

  Cat({required this.age, required this.name}) : type = PetType.cat;
}
