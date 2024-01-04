void main(List<String> args) {
  final d = Animal(name: 'Rocky', type: AnimalType.dog);

  print(d.type);
  print(d.type == AnimalType.dog);

  switch (d.type) {
    case AnimalType.rabbit:
      print('This is a Rabbit');
      break;
    case AnimalType.dog:
      print('This is a Dog');
      break;
    case AnimalType.cat:
      print('This is a Cat');
      break;
    default:
      print('What are you?');
      break;
  }
}

enum AnimalType {
  rabbit,
  dog,
  cat,
}

class Animal {
  final String name;
  final AnimalType type;

  const Animal({
    required this.name,
    required this.type,
  });
}
