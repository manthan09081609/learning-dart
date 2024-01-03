void main(List<String> args) {
  sayGoodbye('p1', null);
  sayGoodbye('p1', 'p2');
  sayGoodbye('p1', 'p2', null);
  sayGoodbye('p1', 'p2', 'p3');
  sayGoodbye('p1', 'p2', 'p3', 'p4');
  // sayGoodbye('p1', 'p2', 'p3', null);
  sayGoodbye('p1', 'p2', 'p3', 'p4', 'p5');
  sayGoodbye('p1', 'p2', 'p3', 'p4', null);
}

void sayGoodbye(String person1, String? person2,
    [String? person3, String person4 = 'Manthan', String? person5 = 'Mayank']) {
  print('-------------------------------------------');
  print('$person1 $person2 $person3 $person4 $person5');
  print('+++++++++++++++++++++++++++++++++++++++++++');
}
