class ClubIuMember{
  String name = 'Minam';
  String membershipNo = 'M2348*******';
  int birthYear = 1985;
  String gender = 'MALE';
}

void main() {
  ClubIuMember member = ClubIuMember();
  member.birthYear = 2024;

  print(member.birthYear);
}