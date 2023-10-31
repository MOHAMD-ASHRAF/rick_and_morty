class Characters {
  final int charid;
  final String name;
  final String status;
  final String species;
  final String gender;
  final String image;

  const Characters({
    required this.charid,
    required this.name,
    required this.status,
    required this.species,
    required this.gender,
    required this.image,
  });

  factory Characters.formJson(Map<String, dynamic> json) {
    return Characters(
      charid: json['id'],
      name: json['name'],
      status: json['status'],
      species: json['species'],
      gender: json['gender'],
      image: json['image'],
    );
  }
}
