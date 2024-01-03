// Naming Convection
//   -> Variables/Functions - Camel Case
//   -> Enums/Classes - Pascal Case

void main(List<String> args) {
  // ignore: constant_identifier_names
  const UserName = 'Manthan';
  print(UserName);

  // ignore: non_constant_identifier_names
  final UserAge = 23;
  print(UserAge);

  // ignore: non_constant_identifier_names
  var UserGender = 'M';
  print(UserGender);
}
