import 'dart:async';

void main(List<String> args) async {
  final controller = StreamController<String>();

  controller.sink.add('Manthan');
  controller.sink.add('Saloni');

  await for (final name in controller.stream) {
    print(name);
  }

  controller.close();
}
