void main(List<String> args) {
  final t = Tuple(1, '20');
  print(t);
  final swappped = t.swap();
  print(swappped);
  final tNew = Tuple(1, 21);
  final s = tNew.sum;
  print(s);
}

class Tuple<L, R> {
  final L left;
  final R right;

  Tuple(this.left, this.right);

  @override
  String toString() {
    return 'Tuple (left = $left, right = $right)';
  }
}

extension Swap<L, R> on Tuple<L, R> {
  Tuple<R, L> swap() => Tuple(right, left);
}

extension<L extends num, R extends num> on Tuple<L, R> {
  num get sum => left + right;
}
