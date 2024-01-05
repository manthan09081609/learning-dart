void main(List<String> args) {
  const c = Car();
  c.accelerate();
  c.deaccelerate();
  print('------------------------------');
  const m = Motorcycle();
  m.accelerate();
  m.deaccelerate();
}

abstract class Vehicle {
  final VehicleKind kind;

  const Vehicle({
    required this.kind,
  });

  void accelerate() => print('$kind is accelerating');
  void deaccelerate() => print('$kind is deaccelerating');
}

class Car extends Vehicle {
  const Car() : super(kind: VehicleKind.car);
}

class Motorcycle implements Vehicle {
  const Motorcycle();

  @override
  VehicleKind get kind => VehicleKind.motorcycle;

  @override
  void accelerate() => print('Motorcyle is accelerating');

  @override
  void deaccelerate() => print('Motorcyle is deaccelerating');
}

enum VehicleKind {
  car,
  truck,
  motorcycle,
  bicyle,
}
