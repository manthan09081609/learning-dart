void main(List<String> args) {
  const v = Vehicle(4);
  print(v);

  print('------------------');
  print(Car());
  print(Bicyle());
}

class Vehicle {
  final int wheelCount;

  const Vehicle(this.wheelCount);

  @override
  String toString() {
    return '$runtimeType with $wheelCount wheels';
  }
}

class Car extends Vehicle {
  const Car() : super(4);
}

class Bicyle extends Vehicle {
  const Bicyle() : super(2);
}
