void main(List<String> args) {}

class Throws<T> {
  final List<T> exceptions;

  const Throws(this.exceptions);
}

class DogIsTooOldException implements Exception {
  const DogIsTooOldException();
}

class DogIsTiredException implements Exception {
  const DogIsTiredException();
}

class Animal {
  final int age;

  const Animal({required this.age});

  @Throws([UnimplementedError])
  void run() => throw UnimplementedError();
}

class Dog extends Animal {
  final bool isTired;

  const Dog({
    required int age,
    required this.isTired,
  }) : super(age: age);

  @Throws([DogIsTooOldException, DogIsTiredException])

  /// this function throws following exceptions
  /// [DogIsTooOldException] -> if the dog is older than 10
  /// [DogIsTiredException] -> if dog is tired
  @override
  void run() {
    if (age > 10) {
      throw const DogIsTooOldException();
    } else if (isTired) {
      throw const DogIsTiredException();
    } else {
      print('Dog is Running');
    }
  }
}
