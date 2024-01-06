void main(List<String> args) {
  // final JSON<String> json = {
  //   'name': 'manthan',
  //   'age': 21,
  // };

  // final JSON<int> json = {
  //   'name': 'manthan',
  //   'age': 21,
  // };

  final JSON<String> json = {
    'name': 'manthan',
    'age': '21',
  };
  print(json);
}

typedef JSON<T> = Map<String, T>;
