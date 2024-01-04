void main(List<String> args) {
  /*
  {
    'name':'motu',
    'type':'cat'
  }
  */

  describe(animalTypeFn(type: 'cat'));
  describe(animalTypeFn(type: 'dog'));
  describe(animalTypeFn(type: 'rabbit'));
  describe(animalTypeFn(type: 'horse'));
}

void describe(AnimalType? animalType) {
  switch (animalType) {
    case AnimalType.cat:
      print('Cat');
      break;
    case AnimalType.dog:
      print('Dog');
      break;
    case AnimalType.rabbit:
      print('Rabbit');
      break;
    default:
      print('Unknown Animal');
      break;
  }
}

AnimalType? animalTypeFn({
  required String type,
}) {
  try {
    return AnimalType.values.firstWhere((element) => element.name == type);
  } catch (e) {
    return null;
  }
}

enum AnimalType {
  cat,
  dog,
  rabbit,
}
