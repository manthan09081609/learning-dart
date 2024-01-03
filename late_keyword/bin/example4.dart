void main(List<String> args) {
  final person = Person();
  print(person.firstName);
  print(person.fullName);
  print(person.lastName);
}

class Person {
  late String fullName = _getName();
  late String firstName = fullName.split(' ').first;
  late String lastName = fullName.split(' ').last;

  String _getName() {
    print('_getName() is called');
    return 'Manthan Sharma';
  }
}
