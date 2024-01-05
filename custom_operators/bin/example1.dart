void main(List<String> args) {
  const member1 = FamilyMember(name: 'Vimla');
  const member2 = FamilyMember(name: 'Rajesh');
  final family = member1 + member2;
  print(family);
}

class FamilyMember {
  final String name;

  const FamilyMember({required this.name});

  @override
  String toString() {
    return 'Family Member (name = $name)';
  }
}

class Family {
  final List<FamilyMember> members;

  const Family({required this.members});

  @override
  String toString() {
    return 'Familt (members = $members)';
  }
}

extension ToFamily on FamilyMember {
  Family operator +(FamilyMember other) => Family(members: [
        this,
        other,
      ]);
}
