import 'dart:async';

void main(List<String> args) async {
  // nonBroadCastStreamExample();
  print('------------------------------------');
  broadCastStreamExample();
}

Future<void> nonBroadCastStreamExample() async {
  final controller = StreamController<String>();
  controller.sink.add('Manthan');
  controller.sink.add('Saloni');
  controller.sink.add('Niyati');

  try {
    await for (final name in controller.stream) {
      print(name);
      await for (final name in controller.stream) {
        print(name);
      }
    }
  } catch (e) {
    print(e);
  }

  controller.close();
}

Future<void> broadCastStreamExample() async {
  late final StreamController controller;

  controller = StreamController<String>.broadcast();

  final sub1 = controller.stream.listen((name) {
    print('sub1 : $name');
  });

  final sub2 = controller.stream.listen((name) {
    print('sub2 : $name');
  });

  controller.sink.add('Manthan');
  controller.sink.add('Saloni');
  controller.sink.add('Niyati');
  controller.close();

  controller.onCancel = () {
    print('OnCancel');
    sub1.cancel();
    sub2.cancel();
  };
}
