import 'package:collection/collection.dart';

void main(List<String> args) {
  final user = {
    'name': 'Manthan',
    'age': 22,
  };

  final readOnlyUser = UnmodifiableMapView(user);

  user.addAll({
    'gender': 'Male',
  });

  try {
    readOnlyUser.addAll({
      'gender': 'Female',
    });
  } catch (e) {
    print(e);
  }

  print(user);
  print(readOnlyUser);
}
