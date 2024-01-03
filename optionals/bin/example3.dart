void main(List<String> args) {
  int? number;
  isNull(number);
  number = 23;
  isNull(number);
}

void isNull(int? number) {
  if (number == null) {
    print('Number is Null');
  } else {
    print('Number is not Null');
  }
}
