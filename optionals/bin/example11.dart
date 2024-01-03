void main(List<String> args) {
  String? name;

  void changeName() {
    name = 'Manthan';
  }

  changeName();

  if (name?.contains('Man') ?? false) {
    print('name contains Man');
  }

  if (name?.contains('Man') == true) {
    print('name contains Man');
  }

  int length = name?.length ?? 0;
  print(length);
}
