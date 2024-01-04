void main(List<String> args) {
  for (final name in getName()) {
    print(name);
  }
}

Iterable<String> getName() sync* {
  print('Producing Name 1');
  yield 'Name 1';

  print('Producing Name 2');
  yield 'Name 2';

  print('Producing Name 3');
  yield 'Name 3';

  yield* getTemplateNames();
}

Iterable<String> getTemplateNames() sync* {
  print('Producing Template Name 1');
  yield 'Template Name 1';

  print('Producing Template Name 2');
  yield 'Template Name 2';

  print('Producing Template Name 3');
  yield 'Template Name 3';
}
