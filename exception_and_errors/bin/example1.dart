void main(List<String> args) {
  tryCreatingPerson(age: 22);
  print('--------------------------');
  tryCreatingPerson(age: -22);
  print('--------------------------');
  tryCreatingPerson(age: 220);
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } catch (e) {
    print(e.runtimeType);
    print(e);
  }
}

class Person {
  final int age;

  Person({required this.age}) {
    if (age < 0) {
      throw Exception('Age must be positive');
    } else if (age > 140) {
      throw 'Age must be less than 140';
    }
  }
}
