void main(List<String> args) {
  String? firstName;
  String? lastName;
  String name = 'Manthan';

  final username1 = firstName ?? lastName;
  print(username1);
  final username2 = firstName ?? name;
  print(username2);
  final username3 = firstName ?? lastName ?? name;
  print(username3);
}
