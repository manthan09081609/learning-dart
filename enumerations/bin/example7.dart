void main(List<String> args) {
  AnimalType.cat
    ..run()
    ..jump();
  AnimalType.dog.jump();
}

enum AnimalType {
  cat,
  dog,
  rabbit;

  void run() {
    print('$this Running...');
  }
}

extension Jump on AnimalType {
  void jump() {
    print('$this Jumped!');
  }
}
