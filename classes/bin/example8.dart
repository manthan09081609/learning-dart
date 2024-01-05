void main(List<String> args) {
  final c1 = Car(name: 'TeslaX');
  final c2 = Car(name: 'TeslaY');
  print(c1.name);
  print(c2.name);

  print(Car.carInstantiated);
}

class Car {
  static int _carInstantiated = 0;

  final String name;

  static int get carInstantiated => _carInstantiated;
  static void _incrementCarInstantiated() => _carInstantiated++;

  Car({
    required this.name,
  }) {
    _incrementCarInstantiated();
  }
}
