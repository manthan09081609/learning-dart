import 'dart:io';

void main(List<String> args) {
  do {
    stdout.write('Enter your age or "exit" : ');
    final input = stdin.readLineSync();

    if (input == 'exit') {
      break;
    } else if ((input?.length ?? 0) == 0 || input == null) {
      print('Invalid age. Try again..');
      continue;
    }

    final age = int.tryParse(input);

    if (age == null) {
      print('Invalid age. Try again..');
      continue;
    }

    switch (age) {
      case 10:
        print('You are 10 years old,hey child');
        break;
      case 20:
        print('You are 20 years old,hey teeny');
        break;
      case 30:
        print('You are 30 years old,hey adult');
        break;
      case 40:
        print('You are 40 years old,hey old');
        break;
      default:
        print('You are $age old');
        break;
    }
  } while (true);
}
