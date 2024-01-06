void main(List<String> args) {
  const momAndDad = {
    'mom': Person(),
    'dad': Person(),
  };
  const sonAndDaughterAndFish = {
    'son': Person(),
    'daughter': Person(),
    'fishy': Fish(),
  };

  const allValues = [
    momAndDad,
    sonAndDaughterAndFish,
  ];

  describe(allValues);
}

typedef BreathingThings<T extends CanBreath> = Map<String, T>;

void describe(Iterable<BreathingThings> values) {
  for (final map in values) {
    for (final entry in map.entries) {
      print(entry.key);
      entry.value.breath();
    }
  }
}

mixin CanBreath {
  void breath();
}

class Person with CanBreath {
  const Person();

  @override
  void breath() {
    print('Person is breathing..');
  }
}

class Fish with CanBreath {
  const Fish();

  @override
  void breath() {
    print('Fish is breathing..');
  }
}
