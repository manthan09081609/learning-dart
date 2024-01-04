void main(List<String> args) {
  final user = {
    'username': 'Manthan',
    'age': 22,
    'height': 160,
    'isMarried': false,
    'address': {
      'country': 'India',
      'state': 'Uttarakhand',
      'city': 'Dehradun',
      'street': '166/1, Gandhi Gram'
    }
  };

  for (final entry in user.entries) {
    print('${entry.key} : ${entry.value}');
  }
}
