//    -> Can assign value after creation but only once
//    -> Avoid Reassigning new Value
//    -> Modification to old Value is possible

void main(List<String> args) {
  final int age;
  age = 23;
  print(age);

  final name = 'Manthan';
  print(name);
  // name = 'Mayank';

  final user = {'name': 'Manthan', 'age': 22};
  print(user);
  user['age'] = 23;
  print(user);
}
