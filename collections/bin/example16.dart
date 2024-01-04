void main(List<String> args) {
  addToArrayWrong();
  print('---------------------------');
  addToArrayRight();
  print('---------------------------');
  addToDictionaryWrong();
  print('---------------------------');
  addToDictionaryRight();
}

void addToArrayWrong() {
  final name1 = ['Manthan', 'Saloni'];
  final name2 = ['Niyati', 'Dixit'];
  final allNamesWrong = name1;
  allNamesWrong.addAll(name2);

  print(name1);
  print(name2);
  print(allNamesWrong);
}

void addToArrayRight() {
  final name1 = ['Manthan', 'Saloni'];
  final name2 = ['Niyati', 'Dixit'];
  final allNamesRight = [...name1, ...name2];
  // final allNamesRight2 = [...name1]..addAll(name2);
  // final allNameRight3 = {...name1}..addAll(name2);

  print(name1);
  print(name2);
  print(allNamesRight);
  // print(allNamesRight2);
  // print(allNameRight3);
}

void addToDictionaryWrong() {
  const user = {
    'name': 'Manthan',
    'age': 21,
  };
  final userCopy = user;

  try {
    userCopy.addAll({'gender': 'Male'});
  } catch (e) {
    print(e);
  }
  print(userCopy);
}

void addToDictionaryRight() {
  const user = {
    'name': 'Manthan',
    'age': 21,
  };
  // final userCopy = {...user};
  // userCopy.addAll({'gender': 'Male'});

  final userCopy = {...user}..addAll({'gender': 'Male'});

  print(userCopy);
}
