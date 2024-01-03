void main(List<String> args) {
  print('Before');
  late final String fullName = getFullName();
  final resolvedFullName = fullName;
  print(resolvedFullName);
  print('After');
}

String getFullName() {
  print('getFullName() is called');
  return 'Manthan Sharma';
}
