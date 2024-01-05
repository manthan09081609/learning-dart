void main(List<String> args) {
  final meThisYear = Person(age: 20);
  final meInTenYears = meThisYear + 10;
  print(meInTenYears);
}

class Person {
  final int age;

  Person({required this.age});

  @override
  String toString() {
    return 'Person (age = $age)';
  }

  Person operator +(int year) => Person(
        age: age + year,
      );
}
