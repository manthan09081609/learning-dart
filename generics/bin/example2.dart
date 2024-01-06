void main(List<String> args) {
  print(doTypeMatch(1, 2));
  print(doTypeMatch(1, 22.2));
  print(doTypeMatch(1, false));
}

// bool doTypeMatch(Object a, Object b) {
//   return a.runtimeType == b.runtimeType;
// }

bool doTypeMatch<T, R>(T a, R b) {
  return T == R;
}
