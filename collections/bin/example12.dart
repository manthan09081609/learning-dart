void main(List<String> args) {
  final nikki = Person(name: 'Nikki');
  final khushi = Person(name: 'Khushi');
  final manthan = Person(name: 'Manthan', siblings: [nikki]);

  manthan._siblings?.add(khushi);

  print(manthan._siblings);
}

class Person {
  final String name;
  final List<Person>? _siblings;

  const Person({required this.name, List<Person>? siblings})
      : _siblings = siblings;

  @override
  String toString() {
    return name;
  }
}
