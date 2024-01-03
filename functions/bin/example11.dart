void main(List<String> args) {
  sayGoodbye(null, null);
  sayGoodbye('Manthan', null);
  sayGoodbye('Manthan', 'Mayank');
}

void sayGoodbye(String? person1, String? person2) {
  print('Goodbye, $person1 $person2');
}
