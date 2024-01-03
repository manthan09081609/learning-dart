// ignore_for_file: unused_local_variable

// Non-constants cannot be assigned to Constant Value
void main(List<String> args) {
  const num1 = 10;
  final num2 = num1;

  final num3 = 20;
  // const num4 = num3;
}
