void main(List<String> args) {
  print(add());
  print(add(2, 3));
  print(add(5));
}

int add([int a = 1, int b = 2]) {
  return a + b;
}
