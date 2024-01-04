void main(List<String> args) {
  final user = {'name': 'Manthan', 'age': 22};

  print('-----------------------');
  print(user);
  print(user['name']);
  print(user['age']);

  print('-----------------------');
  print(user.keys);
  print(user.values);

  print('-----------------------');
  user['gender'] = 'Male';
  user['age'] = 23;
  print(user);

  print('-----------------------');
  user.putIfAbsent('height', () => 180);
  user.putIfAbsent('height', () => 190);
  print(user);

  print('-----------------------');
  for (final entry in user.entries) {
    print('${entry.key} : ${entry.value}');
  }

  print('-----------------------');
  print(user.containsKey('height'));
  print(user.containsValue('Manthan'));

  print('-----------------------');
  print(user['weight']);

  print('-----------------------');
  final integerKeyMap = {
    1: 'One',
    2: 'Two',
    3: 'Three',
  };
  print(integerKeyMap);
}
