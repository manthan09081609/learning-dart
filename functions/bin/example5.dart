void main(List<String> args) {
  sayHello();
  sayHello(name: null);
  sayHello(name: 'Manthan');

  sayHi();
  // sayHi(name: null);
  sayHi(name: 'Manthan');
}

void sayHello({String? name}) {
  print('Hello $name');
}

void sayHi({String name = ''}) {
  print('Hi $name');
}
