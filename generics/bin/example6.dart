void main(List<String> args) {
  final person = Person(height: 1.6);
  final dog = Dog(height: 1);
  print(person.height);
  print(dog.height);
}

mixin HasHeight<H> {
  H get height;
}

typedef HasIntHeight = HasHeight<int>;
typedef HasDoubleHeight = HasHeight<double>;

class Person with HasDoubleHeight {
  @override
  final double height;

  Person({required this.height});
}

class Dog with HasIntHeight {
  @override
  final int height;

  Dog({required this.height});
}
