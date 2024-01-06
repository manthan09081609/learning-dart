void main(List<String> args) async {
  await for (final number in numbers()) {
    print(number);
  }
  print('----------------------');
  await for (final number in numbers(start: 1, end: 10, f: evenNumbers)) {
    print(number);
  }
  print('----------------------');
  await for (final number in numbers(start: 1, end: 10, f: oddNumbers)) {
    print(number);
  }
}

typedef IsIncluded = bool Function(int value);

bool evenNumbers(int value) => value % 2 == 0;
bool oddNumbers(int value) => value % 2 != 0;

Stream<int> numbers({
  int start = 0,
  int end = 4,
  IsIncluded? f,
}) async* {
  for (var i = start; i < end; i++) {
    if (f == null || f(i)) {
      yield i;
    }
  }
}
