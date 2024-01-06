import 'dart:isolate';

void main(List<String> args) async {
  await for (final message in getMessages().take(10)) {
    print(message);
  }
  print('---------------------------------');
  await for (final message in getMessages2().take(10)) {
    print(message);
  }
}

Stream<String> getMessages() {
  final rp = ReceivePort();
  return Isolate.spawn(_getMessages, rp.sendPort)
      .asStream()
      .asyncExpand((_) => rp)
      .takeWhile((element) => element is String)
      .cast<String>();
}

Stream<String> getMessages2() async* {
  final rp = ReceivePort();
  await Isolate.spawn(_getMessages, rp.sendPort);
  await for (final msg
      in rp.takeWhile((element) => element is String).cast<String>()) {
    yield msg;
  }
}

void _getMessages(SendPort sp) async {
  await for (final now in Stream.periodic(
    const Duration(
      milliseconds: 200,
    ),
    (_) => DateTime.now().toIso8601String(),
  )) {
    sp.send(now);
  }
}
