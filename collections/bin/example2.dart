import 'package:collection/collection.dart';

void main(List<String> args) {
  print('------------------------------');
  final names = {'Manthan', 'Saloni', 'Niyati', 'Dixit'};
  names.add('Manthan');
  names.add('Manthan');
  names.add('Manthan');
  print(names);

  print('------------------------------');
  final names1 = ['Manthan', 'Saloni', 'Niyati', 'Dixit', 'Manthan'];
  final uniqueNames = {...names1};
  print(names1);
  print(uniqueNames);

  print('------------------------------');
  final name1 = 'Manthan';
  var name2 = 'Manthan';
  print(name1.hashCode);
  print(name2.hashCode);

  print('------------------------------');
  print(names.contains('Manthan'));

  print('------------------------------');
  final ages1 = {10, 20, 30};
  final ages2 = {10, 20, 30};
  print(ages1 == ages2);

  print('------------------------------');

  final ages3 = {10, 30, 20};
  final ages4 = {10, 20, 30};
  print(SetEquality().equals(ages1, ages2));
  print(SetEquality().equals(ages3, ages4));
}
