void main(List<String> args) {
  abracadabra();
  print('----------------------');
  evenNumbers();
  print('----------------------');
  lengthOfNames();
}

void abracadabra() {
  final string = 'abracadabra';
  // var result = '';
  // for (final chr in string.split('')) {
  //   if (chr == 'a' || chr == 'b' || chr == 'c') {
  //   } else {
  //     result += chr;
  //   }
  // }
  // var result = {
  //   for (final chr in string.split('')) 'abc'.contains(chr) ? null : chr
  // }
  //   ..removeAll([null])
  //   ..cast<String>();
  // var result = {
  //   for (final chr in string.split('')) 'abc'.contains(chr) ? '' : chr
  // }..removeAll(['']);
  var result = {
    for (final chr in string.split(''))
      if (!'abc'.contains(chr)) chr
  };
  print(result);
}

void evenNumbers() {
  final allNumbers = Iterable.generate(100);
  final evenNumbers = [
    for (final int number in allNumbers)
      if (number % 2 == 0) number
  ];
  print(evenNumbers);
  final evenNumberFunctional = allNumbers.where((number) => number % 2 == 0);
  print(evenNumberFunctional);
}

void lengthOfNames() {
  final names = [
    'Manthan Sharma',
    'Saloni Bhatt',
    'Niyati Singhal',
    'Ashutosh Duivedi'
  ];

  final result = {for (final name in names) name: name.length};

  print(result);
}
