void main(List<String> args) {
  final person = Person(age: 10);
  print(person);
  person.age = 0;
  print(person);

  // Error needs not be catched,
  // solution do not do it
  try {
    person.age = -10;
    print(person);
  } catch (e) {
    print(e);
  } finally {
    print(person);
  }
}

class Person {
  int _age;

  Person({required int age}) : _age = age;

  int get age => _age;
  set age(int value) {
    if (value < 0) {
      throw ArgumentError('Age must be Positive');
    }
    _age = value;
  }

  @override
  String toString() {
    return 'Person (age = $age)';
  }
}
