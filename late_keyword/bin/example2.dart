void main(List<String> args) {
  print('Before');
  late String name = getName();
  print('After');
  print(name);
}

String getName() {
  print('getName is called');
  return 'Manthan Sharma';
}
