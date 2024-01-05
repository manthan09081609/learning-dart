void main(List<String> args) {
  print([1, 2, 3, 1].containsDuplicateValues);
  print([1, 2, 3].containsDuplicateValues);
  print(['a', 'b', 'c', 'a'].containsDuplicateValues);
}

extension on Iterable {
  bool get containsDuplicateValues => toSet().length != length;
}
