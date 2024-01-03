void main(List<String> args) {
  sayHello();
  sayHello(name: null);
  sayHello(name: 'Mayank');
}

void sayHello({String? name = 'Manthan'}) {
  print('Hello $name');
}
