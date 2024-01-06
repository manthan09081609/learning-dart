void main(List<String> args) {
  tryCreatingPerson(age: 22);
  print('--------------------------');
  tryCreatingPerson(age: -22);
  print('--------------------------');
  tryCreatingPerson(age: 220);
}

class InvalidAgeException implements Exception {
  final String message;
  final int age;

  InvalidAgeException({
    required this.message,
    required this.age,
  });

  @override
  String toString() => 'InvalidAgeException : $message , $age';
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } on InvalidAgeException catch (exception, stackTrace) {
    print(exception);
    print(stackTrace);
  } catch (e) {
    print(e);
  }
}

class Person {
  final int age;

  Person({required this.age}) {
    if (age < 0) {
      throw InvalidAgeException(age: age, message: 'Age must be positive');
    } else if (age > 140) {
      throw InvalidAgeException(message: 'Age must be less than 140', age: age);
    }
  }
}
