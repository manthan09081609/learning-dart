void main(List<String> args) {
  print(TeslaCars.values);
  print([...TeslaCars.values]..sort());
}

enum TeslaCars implements Comparable<TeslaCars> {
  modelX(weightInKg: 2.2),
  modelY(weightInKg: 1.2),
  modelS(weightInKg: 2.3),
  model3(weightInKg: 3.1);

  final double weightInKg;

  const TeslaCars({
    required this.weightInKg,
  });

  @override
  int compareTo(TeslaCars other) => weightInKg.compareTo(other.weightInKg);
}
