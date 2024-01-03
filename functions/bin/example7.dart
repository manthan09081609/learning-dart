void main(List<String> args) {
  sayHello();
  sayHello(name: 'Mayank');
}

void sayHello({String name = 'Manthan'}) {
  print('Hello $name');
}
