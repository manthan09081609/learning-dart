void main(List<String> args) {
  sayGoodbye();
  sayGoodbye(null);
  sayGoodbye('Niyati');
  sayGoodbye(null, 'Mayank');
  sayGoodbye('Saloni', 'Mayank');
  // sayGoodbye('Saloni', null);
}

void sayGoodbye([String? person1, String person2 = 'Manthan']) {
  print('-------------------------------------------');
  print('$person1 $person2');
  print('+++++++++++++++++++++++++++++++++++++++++++');
}
