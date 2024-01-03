void main(List<String> args) {
  String? getNameOptional() {
    return 'Manthan';
  }

  final name = getNameOptional();

  name.describe();
}

extension Describe on Object? {
  void describe() {
    if (this == null) {
      print('This object is null');
    } else {
      print('$runtimeType : $this');
    }
  }
}
