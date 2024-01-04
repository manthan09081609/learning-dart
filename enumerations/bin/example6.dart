void main(List<String> args) {
  AnimalType.cat.jump();
  AnimalType.dog.jump();
  try {
    AnimalType.fish.jump();
  } catch (e) {
    print('Fish Cannot jump');
  }
}

mixin CanJump {
  int get feetCount;

  void jump() {
    if (feetCount < 1) {
      throw Exception('Cannot Jump');
    } else {
      print('Jumped');
    }
  }
}

enum AnimalType with CanJump {
  cat(feetCount: 4),
  dog(feetCount: 4),
  fish(feetCount: 0);

  @override
  final int feetCount;

  const AnimalType({required this.feetCount});
}
