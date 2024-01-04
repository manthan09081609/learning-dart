import 'dart:collection';

void main(List<String> args) {
  final nikki = Person(name: 'Nikki');
  final khushi = Person(name: 'Khushi');
  final manthan = Person(name: 'Manthan', siblings: [nikki]);

  // manthan._siblings?.add(khushi);

  // print(manthan._siblings);

  try {
    manthan.siblings?.add(khushi);
  } catch (e) {
    print(e);
  }

  print(manthan.siblings);
}

class Person {
  final String name;
  final List<Person>? _siblings;

  UnmodifiableListView<Person>? get siblings {
    return _siblings == null ? null : UnmodifiableListView(_siblings);
  }

  const Person({required this.name, List<Person>? siblings})
      : _siblings = siblings;

  @override
  String toString() {
    return name;
  }
}
