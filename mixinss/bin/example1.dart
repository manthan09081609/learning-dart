void main(List<String> args) {
  final person = Person();

  print(person.speed);
  person.jump(speed: 12);
  print(person.speed);
  person.walk(speed: 100);
  print(person.speed);
}

mixin HasSpeed {
  abstract int speed;
}

mixin CanJump on HasSpeed {
  void jump({
    required int speed,
  }) {
    print('$runtimeType is jumping at the speed of $speed');
    this.speed = speed;
  }
}

mixin CanWalk on HasSpeed {
  void walk({
    required int speed,
  }) {
    print('$runtimeType is walking at the speed of $speed');
    this.speed = speed;
  }
}

class Person with HasSpeed, CanJump, CanWalk {
  @override
  int speed;

  Person() : speed = 0;
}
