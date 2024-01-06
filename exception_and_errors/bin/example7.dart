void main(List<String> args) {
  try {
    Dog(isTired: true).run();
  } catch (e, stackTrace) {
    print(e);
    print(stackTrace);
  }
}

class DogIsTiredException implements Exception {
  final String message;

  DogIsTiredException([this.message = 'Poor Dog is Tired']);
}

class Dog {
  final bool isTired;

  Dog({required this.isTired});

  void run() {
    if (isTired) {
      throw DogIsTiredException();
    }
    print('Dog is running...');
  }
}
