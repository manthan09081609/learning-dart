import 'dart:collection';

void main(List<String> args) {
  // final List<String> names = [];
  // print(names.first);
  // print(names.last);
  // print(names[1]);

  // final List<String> names = ['Manthan', 'Saloni'];
  // names.length = 3;

  const notFound = 'NotFound';
  const defaultString = '';

  final myList = SafeList(
    defaultValue: defaultString,
    absentValue: notFound,
    list: [
      'Manthan',
      'Sharma',
    ],
  );

  print(myList);
  print(myList[0]);
  print(myList[3]);
  print(myList[-3]);
  print(myList.first);
  print(myList.last);

  myList.length = 5;
  print(myList);

  myList[8] = '566';
}

class SafeList<T> extends ListBase<T> {
  final List<T> _list;
  final T absentValue;
  final T defaultValue;

  SafeList({
    required this.defaultValue,
    required this.absentValue,
    List<T>? list,
  }) : _list = list ?? [];

  @override
  int get length => _list.length;

  @override
  T operator [](int index) {
    return (index < _list.length && index >= 0) ? _list[index] : absentValue;
  }

  @override
  void operator []=(int index, T value) => _list[index] = value;

  // @override
  // void operator []=(int index, T value) => (index < _list.length && index >= 0)
  //     ? _list[index] = value
  //     : print('Increase the size of List');

  @override
  set length(int newLength) {
    if (newLength <= _list.length) {
      _list.length = newLength;
    } else {
      _list.addAll(List.filled(newLength - _list.length, defaultValue));
    }
  }

  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;

  @override
  T get last => _list.isNotEmpty ? _list.last : absentValue;
}
