void main(List<String> args) {
  final String? name = null;
  int length = 0;

  if (name != null) {
    length = name.length;
    print(length);
  } else {
    print('name is null');
  }
}
