void main(List<String> args) {
  print('Manthan'.reversed);
}

extension on String {
  String get reversed {
    return split('').reversed.join('');
  }
}
