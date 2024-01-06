import 'dart:async';

void main(List<String> args) async {
  await for (final name in getNames().absorbErrorsUsingHandleError()) {
    print(name);
  }
  print('--------------------------------');
  await for (final name in getNames().absorbErrorUsingHandlers()) {
    print(name);
  }
  print('--------------------------------');
  await for (final name in getNames().absorbErrorUsingStreamErrorAbsorber()) {
    print(name);
  }
  print('--------------------------------');
}

extension AbsorbError<T> on Stream<T> {
  Stream<T> absorbErrorsUsingHandleError() => handleError((_, __) {});

  Stream<T> absorbErrorUsingHandlers() => transform(
        StreamTransformer.fromHandlers(
          handleError: (_, __, sink) => sink.close(),
        ),
      );

  Stream<T> absorbErrorUsingStreamErrorAbsorber() =>
      transform(StreamErrorAbsorber());
}

Stream<String> getNames() async* {
  yield 'Manthan';
  yield 'Niyati';
  throw 'All out of Names';
}

class StreamErrorAbsorber<T> extends StreamTransformerBase<T, T> {
  // @override
  // Stream<T> bind(Stream<T> stream) {
  //   return stream.handleError(
  //     (_, __) => {},
  //   );
  // }

  @override
  Stream<T> bind(Stream<T> stream) {
    final controller = StreamController<T>();

    stream.listen(
      controller.sink.add,
      onError: (_) {},
      onDone: controller.close,
    );

    return controller.stream;
  }
}
