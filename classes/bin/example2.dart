void main(List<String> args) {
  const person1 = Person('Manthan', 22);
  print(person1.name);
  print(person1.age);

  const person2 = Person.mayank();
  print(person2.name);
  print(person2.age);

  const person3 = Person.saloni(22);
  print(person3.name);
  print(person3.age);

  const person4 = Person.other(name: 'Ayush');
  print(person4.name);
  print(person4.age);
}

class Person {
  final String name;
  final int age;

  const Person(this.name, this.age);

  const Person.mayank()
      : name = 'mayank',
        age = 22;

  const Person.saloni(
    this.age,
  ) : name = 'saloni';

  const Person.other({
    String? name,
    int? age,
  })  : name = name ?? 'Manthan',
        age = age ?? 21;
}
