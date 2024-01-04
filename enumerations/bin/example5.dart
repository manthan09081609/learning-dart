void main(List<String> args) {
  final vehicle = VehicleType.car;

  switch (vehicle) {
    case VehicleType.bicycle:
    case VehicleType.motorcycle:
    case VehicleType.car:
      print('Most Common Vehicle');
      break;
    case VehicleType.truck:
      print('Not most common Vehicle');
      break;
  }
}

enum VehicleType {
  car,
  truck,
  motorcycle,
  bicycle,
}
