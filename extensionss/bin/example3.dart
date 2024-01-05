void main(List<String> args) {
  final sumI = [1, 2, 3, 4].sum;
  print(sumI);
  final sumD = [1.1, 2.2, 3.3].sum;
  print(sumD);
}

extension Sum<T extends num> on Iterable<T> {
  T get sum => reduce((a, b) => a + b as T);
}
