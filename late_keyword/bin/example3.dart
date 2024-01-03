void main(List<String> args) {
  final person = Person();
  print(person.age);
  print(person.description);
}

class Person {
  late String description = heavyCalculationOfDescription();
  final int age;

  Person({this.age = 18}) {
    print('Contructor is called');
  }

  String heavyCalculationOfDescription() {
    print('Function "heavyCalculationOfDescription" is Called');
    return 'Description about Me';
  }
}
