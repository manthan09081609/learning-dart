void main(List<String> args) {
  final car = Car();
  car.drive(speed: 20);
  car.stop();
}

class Car {
  int speed = 0;

  void drive({required speed}) {
    this.speed = speed;
    print('Accelerating to $speed Km/hr');
  }

  void stop() {
    speed = 0;
    print('Stopping....');
    print('Stopped');
  }
}
