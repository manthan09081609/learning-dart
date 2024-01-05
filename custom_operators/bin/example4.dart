void main(List<String> args) {
  final string = 'Manthan Sharma is a good boy';
  print(string - 'a');
}

extension Remove on String {
  String operator -(String other) => replaceAll(other, '');
}
