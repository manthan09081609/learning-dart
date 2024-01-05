void main(List<String> args) {
  print(1.to(10));
  print(1.to(10, inclusive: false));
  print(10.to(1));
  print(10.to(1, inclusive: false));
  print(1.to(10, step: 2));
  print(1.to(10, step: 2, inclusive: false));
  print(10.to(1, step: 2));
  print(10.to(1, step: 2, inclusive: false));

  print('------------------------------');
  print(1.toI(100, step: 2, inclusive: false));
}

extension on int {
  Iterable<int> to(int end, {int step = 1, bool inclusive = true}) {
    return end > this
        ? [for (var i = this; i < end; i += step) i, if (inclusive) end]
        : [for (var i = this; i > end; i -= step) i, if (inclusive) end];
  }

  Iterable<int> toI(int end, {int step = 1, bool inclusive = true}) sync* {
    if (end > this) {
      for (var i = this; i < end; i += step) {
        yield i;
      }
      if (inclusive) {
        yield end;
      }
    } else {
      for (var i = this; i > end; i -= step) {
        yield i;
      }
      if (inclusive) {
        yield end;
      }
    }
  }
}
