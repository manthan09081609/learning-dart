void main(List<String> args) {
  print(Person(height: 10).heightRounded);
  print(Person(height: 10.66).heightRounded);
}

class Person<T extends num> {
  final T height;

  Person({required this.height});

  int get heightRounded => height.round();
}
