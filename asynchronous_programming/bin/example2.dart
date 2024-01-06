void main(List<String> args) async {
  try {
    print(await getFullName(firstName: 'manthan', lastName: 'sharma'));
    print('---------------------------------------');
    print(await getFullName(firstName: '', lastName: 'sharma'));
  } catch (e) {
    print('First or Last Name is Missing');
  }
}

Future<String> getFullName({
  required String firstName,
  required String lastName,
}) {
  if (firstName.isEmpty || lastName.isEmpty) {
    throw FirstOrLastNameMissingException();
  } else {
    return Future.value('$firstName $lastName');
  }
}

class FirstOrLastNameMissingException implements Exception {
  const FirstOrLastNameMissingException();
}
