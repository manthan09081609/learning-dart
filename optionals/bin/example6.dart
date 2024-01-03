void main(List<String> args) {
  String? name;
  printLength(name);
  name = 'Manthan';
  printLength(name);
}

void printLength(String? name) {
  print(name?.length);
}
