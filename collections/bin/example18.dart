import 'package:collection/collection.dart';

void main(List<String> args) {
  testBoolList();
  print('-----------------');
  testCanonicalizedMap();
  print('-----------------');
  testCombinedIterableView();
  print('-----------------');
  testCombinedListView();
  print('-----------------');
  testCombinedMapView();
  print('-----------------');
  testMapMerging();
}

void testMapMerging() {
  final user1 = {
    'name': 'Manthan 1',
    'age': 21,
    'sex': 'M',
    'height': 178,
  };

  final user2 = {
    'name': 'Manthan 2',
    'age': 21,
    'sex': 'M',
    'height': 178,
    'weight': 80
  };

  final merge1 = mergeMaps(user1, user2);
  final merge2 = mergeMaps(user1, user2, value: (first, second) => first);
  print(merge1);
  print(merge2);
}

void testCombinedMapView() {
  final one = {
    1: 'one',
    2: 'two',
    3: 'three',
  };

  final two = {
    10: 'ten',
    20: 'twenty',
    30: 'thirty',
  };

  final three = {
    100: 'hundred',
    200: 'two hundred',
    300: 'three hundred',
  };

  final combined = CombinedMapView([
    one,
    two,
    three,
  ]);

  print(combined);
  one.addAll({
    4: 'four',
  });
  print(combined);

  try {
    combined[6] = 'six';
  } catch (e) {
    print(e);
  }

  print(combined[120]);
}

void testCombinedListView() {
  final one = [1, 2, 3];
  final two = [10, 20, 30];
  final three = [100, 200, 300];

  final combined = CombinedListView([
    one,
    two,
    three,
  ]);

  print(combined);
  two.add(40);
  print(combined);

  print(combined.length);
  print(combined.contains(40));

  try {
    combined.add(800);
  } catch (e) {
    print(e);
  }
}

void testCombinedIterableView() {
  final Iterable<int> one = [1, 2, 3];
  final two = [10, 20, 30];
  final Iterable<int> three = [100, 200, 300];

  final combined = CombinedIterableView([
    one,
    two,
    three,
  ]);

  print(combined);
  two.add(40);
  print(combined);

  print(combined.length);
  print(combined.contains(40));
}

void testCanonicalizedMap() {
  final user = {
    'name': 'Manthan Sharma',
    'age': 22,
    'sex': 'M',
    'address': 'Dehradun',
  };

  final canonMap = CanonicalizedMap.from(user, (key) => key.length);

  print(canonMap);
}

void testBoolList() {
  final boolList = BoolList(
    10,
    growable: true,
  );

  print(boolList);
  boolList[3] = true;
  print(boolList);
  boolList.length *= 2;
  print(boolList);
}
