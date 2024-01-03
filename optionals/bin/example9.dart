void main(List<String> args) {
  try {
    final String? firstName = 'Manthan';
    final String? lastName = null;

    print(firstName!);
    print(lastName!);
  } catch (e) {
    print(e);
  }
}
