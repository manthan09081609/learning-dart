void main(List<String> args) {
  final person = Person();
  try {
    // Against the guidelines,use nullable instead in classes
    print(person.fullName);
  } catch (e) {
    print(e);
  }

  person.firstName = 'Manthan';
  person.lastName = 'Sharma';
  print(person.fullName);
}

class Person {
  late final String firstName;
  late final String lastName;
  late String fullName = '$firstName $lastName';
}
