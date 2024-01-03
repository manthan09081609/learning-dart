void main(List<String> args) {
  print(calculate(10, 20)());
}

int Function() calculate(
  int a,
  int b,
) =>
    () => a + b;
