void main(List<String> args) {
  describePerson();
  describePerson(name: 'Manthan');
  describePerson(age: 22);
  describePerson(name: 'Manthan', age: 22);
  describePerson(age: 22, name: 'Manthan');
}

void describePerson({String? name, int? age}) {
  print('Your $name and Your $age');
}
