void main(List<String> args) {
  final p = Person(
    name: 'manthan',
    car: Car.teslaModelX,
  );

  switch (p.car) {
    case Car.teslaModelX:
      print('Manthan has ${p.car}');
      break;
    case Car.teslaModelY:
      print('Manthan has ${p.car}');
      break;
    default:
      print('Manthan has Pata nahi kya hai');
      break;
  }
}

class Person {
  final String name;
  final Car car;

  const Person({
    required this.name,
    required this.car,
  });
}

enum Car {
  teslaModelX(
    manufacturer: 'Tesla',
    model: 'Model X',
    year: 2023,
  ),
  teslaModelY(
    manufacturer: 'Tesla',
    model: 'Model Y',
    year: 2022,
  );

  final String manufacturer;
  final String model;
  final int year;

  const Car({
    required this.manufacturer,
    required this.model,
    required this.year,
  });

  @override
  String toString() => 'Car : $manufacturer $model $year';
}
