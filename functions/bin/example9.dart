void main(List<String> args) {
  // sayHello();
  sayHello(name: 'Mayank');
  sayHello(name: null);
}

void sayHello({required String? name}) {
  print('Hello $name');
}
