void main(List<String> args) async {
  print(await getUserName());
  print('-------------------------');
  print(await getAddress());
  print('-------------------------');
  print(await getPhoneNumber());
  print('-------------------------');
  print(await getCity());
  print('-------------------------');
  print(await getState());
  print('-------------------------');
}

Future<String> getUserName() async => 'Manthan Sharma';

Future<String> getAddress() => Future.value('Dehradun,Uttarakhand');

Future<String> getPhoneNumber() =>
    Future.delayed(const Duration(seconds: 1), () => '78787-78787');

Future<String> getCity() async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Dehradun';
}

Future<String> getState() async =>
    Future.delayed(const Duration(seconds: 1), () => 'Uttarakhand');
