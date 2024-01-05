void main(List<String> args) {
  print(Mom());
  print(Dad());
}

enum Role {
  mom,
  dad,
  son,
  daughter,
  grandpa,
  grandma,
}

class Person {
  final Role role;

  const Person({
    required this.role,
  });

  @override
  String toString() {
    return '$runtimeType Person role : $role';
  }
}

class Mom extends Person {
  const Mom() : super(role: Role.mom);
}

class Dad extends Person {
  const Dad({super.role = Role.dad});
}
