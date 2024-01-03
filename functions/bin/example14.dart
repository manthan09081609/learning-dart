void main(List<String> args) {
  describeUser('Manthan');
  describeUser('Manthan', lastName: null);
  describeUser('Manthan', lastName: 'Sharma');
}

void describeUser(String firstName, {String? lastName = 'Kumar'}) {
  print('$firstName $lastName');
}
