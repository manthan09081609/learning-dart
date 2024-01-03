void main(List<String> args) {
  late final bool isTeenAger;
  const age = 12;

  if (age >= 13 && age <= 19) {
    isTeenAger = true;
  } else if (age < 13) {
    isTeenAger = false;
  }

  try {
    isTeenAger = false;
    print(isTeenAger);
  } catch (e) {
    print(e);
  }
}
