import 'dart:async';

void main(List<String> args) async {
  try {
    await for (final name
        in getNames().withTimeOutBetweenEvents(const Duration(seconds: 3))) {
      print(name);
    }
  } on TimeoutBetweenException catch (e, stackTrace) {
    print(e);
    print(stackTrace);
  }
}

Stream<String> getNames() async* {
  yield 'Manthan';
  await Future.delayed(Duration(seconds: 1));
  yield 'Nikhil';
  await Future.delayed(Duration(seconds: 10));
  yield 'Dixit';
}

extension WithTimeOutBetweenEvents<T> on Stream<T> {
  Stream<T> withTimeOutBetweenEvents(Duration duration) =>
      transform(TimeOutBetweenEvents(duration: duration));
}

class TimeOutBetweenEvents<E> extends StreamTransformerBase<E, E> {
  final Duration duration;

  const TimeOutBetweenEvents({required this.duration});

  @override
  Stream<E> bind(Stream<E> stream) {
    StreamController<E>? controller;
    StreamSubscription<E>? subscription;
    Timer? timer;

    controller = StreamController(
      onListen: () {
        subscription = stream.listen(
          (data) {
            timer?.cancel();
            timer = Timer.periodic(
              duration,
              (timer) {
                controller?.addError(
                  TimeoutBetweenException('Timeout'),
                );
              },
            );
            controller?.add(data);
          },
          onError: controller?.addError,
          onDone: controller?.close,
        );
      },
      onCancel: () {
        subscription?.cancel();
        timer?.cancel();
      },
    );
    return controller.stream;
  }
}

class TimeoutBetweenException implements Exception {
  final String message;

  TimeoutBetweenException(this.message);
}
