void main(List<String> args) {
  print(performOperation(10, 20, (a, b) => a * b));
  print(performOperation(10, 20, add));
  print(performOperation(110, 20, minus));
}

int performOperation(
  int a,
  int b,
  int Function(int, int) operation,
) =>
    operation(a, b);

int add([
  int lhs = 10,
  int rhs = 5,
]) =>
    lhs + rhs;
int minus([
  int lhs = 10,
  int rhs = 5,
]) =>
    lhs - rhs;
