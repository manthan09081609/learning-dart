void main(List<String> args) {
  final value = 33;
  print(value.times(2));
}

extension Times on int {
  int times(int mul) => this * mul;
}
