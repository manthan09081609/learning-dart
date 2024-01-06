const ages = [22, 32, 43, 12, 11];
const names = ['Manthan', 'Saloni', 'Nikhil', 'Astha', 'Ayush'];
const distances = [3.1, 23.3, 4.5, 3.4, 7.8];

int isLessThan<T extends Comparable>(T a, T b) => a.compareTo(b);
int isGreaterThan<T extends Comparable>(T a, T b) => b.compareTo(a);

void sort({bool ascending = true}) {
  final comparator = ascending ? isLessThan : isGreaterThan;
  print([...ages]..sort(comparator));
  print([...names]..sort(comparator));
  print([...distances]..sort(comparator));
}

void main(List<String> args) {
  sort();
  print('----------------------------');
  sort(ascending: false);
}
