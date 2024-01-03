void main(List<String> args) {
  List<String?>? names1;
  print(names1);
  // dead code
  // print(names1?.length);
  // print(names1?.first);
  // names1?.add(1);

  List<String> names = [];
  print(names);
  print(names.length);
  // print(names.first);
  names.add('S');

  List<String?>? names2 = [];
  print(names2);
  print(names2.length);
  // print(names2.first);

  List<String?>? names3 = ['Manthan'];
  print(names3);

  List<String?>? names4 = ['Manthan', null];
  print(names4);
}
