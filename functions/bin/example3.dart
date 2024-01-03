void main(List<String> args) {
  callFunc();
}

void callFunc() {
  print(doNothing1());
  print(doNothing2());
}

doNothing1() {}

dynamic doNothing2() {}
