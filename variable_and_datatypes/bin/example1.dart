// Cannot Modify Constant Variable At All
//    -> Have to assign value at the time of creation
//    -> Avoid Reassigning new Value
//    -> Avoid Modification to old Value

void main(List<String> args) {
  // const int age;
  // age = 23;

  const name = 'Manthan';
  print(name);
  // name = 'Mayank';
  const user = {'name': 'Manthan', 'age': 22};
  print(user);
  // user['age'] = 23;
}
