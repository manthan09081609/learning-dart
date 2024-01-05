void main(List<String> args) {
  print(Vehicle.car());
  print(Vehicle.truck());
  print(Vehicle.vehicle());
}

class Vehicle {
  const Vehicle();

  factory Vehicle.vehicle() => Vehicle();
  factory Vehicle.car() => Car();
  factory Vehicle.truck() => Truck();

  @override
  String toString() {
    return 'Vehicle of Type $runtimeType';
  }
}

class Car extends Vehicle {
  const Car();
}

class Truck extends Vehicle {
  const Truck();
}
