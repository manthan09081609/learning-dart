void main(List<String> args) {
  print(addNumbers());
  print(addNumbers(1));
  print(addNumbers(null, 1));
  print(addNumbers(1, 2));
}

int addNumbers([int? num1, int? num2]) {
  return num1 + num2;
}

extension NullableAdd<T extends num> on T? {
  T operator +(T? other) {
    final thisShadow = this;
    if (thisShadow != null && other == null) {
      return thisShadow;
    } else if (thisShadow == null && other != null) {
      return other;
    } else if (thisShadow != null && other != null) {
      return (thisShadow + other) as T;
    } else {
      return 0 as T;
    }
    // else if (thisShadow == null && other == null) {
    //   return 0 as T;
    // }
  }
}
