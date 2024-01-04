void main(List<String> args) {
  describe(1);
  describe(3.4);
  describe('Manthan');
  describe(false);
  describe({'name': 'Manthan'});
}

void describe<T>(T value) {
  switch (T) {
    case int:
      print('Integer');
      break;
    case double:
      print('Double');
      break;
    case String:
      print('String');
      break;
    case bool:
      print('Boolean');
      break;
    case const (Map<String, String>):
      print('Map');
      break;
    default:
      print('Not included');
      break;
  }
}
