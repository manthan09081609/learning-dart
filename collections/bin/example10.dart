import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = ['Manthan', 'Saloni'];
  names.add('Niyati');

  final readOnlyList = UnmodifiableListView(names);

  try {
    readOnlyList.add('Dixit');
  } catch (e) {
    print(e);
  }

  print(readOnlyList);
}
