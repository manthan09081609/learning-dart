void main(List<String> args) {
  String? getNameOptional() {
    return 'Manthan';
  }

  String getName() {
    return 'Mayank';
  }

  final name = getNameOptional() ?? getName();
  print(name);
}
