void main(List<String> args) {
  final p1 = Person(name: 'Rajesh Sharma');
  final p2 = Person(name: 'Vimla Sharma');

  final family1 = WrongFamily(members: [p1, p2]);
  print(family1);
  print(family1.membersCount);
  final family2 = RightFamily(members: [p1, p2]);
  print(family2);
  print(family2.membersCount);
}

class Person {
  final String name;

  Person({required this.name});
}

class WrongFamily {
  final Iterable<Person> members;
  late int membersCount;

  WrongFamily({required this.members}) {
    membersCount = getMembersCount();
  }

  int getMembersCount() {
    print('Wrong getting members count');
    return members.length;
  }
}

class RightFamily {
  final Iterable<Person> members;
  late int membersCount = getMembersCount();

  RightFamily({required this.members});

  int getMembersCount() {
    print('Right getting members count');
    return members.length;
  }
}
