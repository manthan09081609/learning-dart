import 'dart:io';

void main(List<String> args) {
  do {
    stdout.write('Enter your name or "exit" : ');
    final input = stdin.readLineSync();

    if (input == 'exit') {
      break;
    } else if ((input?.length ?? 0) == 0 || input == null) {
      print('Invalid name. Try again..');
      continue;
    }

    switch (input.toLowerCase()) {
      case 'manthan':
      case 'mayank':
        print('You are $input,you have a great name');
        break;
      case 'raman':
        continue toDahiya;
      toDahiya:
      case 'dahiya':
        print('You $input,hello bro');
        break;
      default:
        print('You are $input');
        break;
    }
  } while (true);
}
