// Late variables are instialised when they are first used

void main(List<String> args) {
  late final value = getValue();
  print('Hello, Welcome to main');
  print('Value is');
  print(value);
  print('Value again');
  print(value);
}

int getValue() {
  print('GetValue Called');
  return 10;
}
