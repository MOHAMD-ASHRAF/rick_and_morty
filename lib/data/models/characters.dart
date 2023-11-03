class CharactersModel {
  final int charId;
  final String name;
  final String status;
  final String species;
  final String gender;
  final String image;

  const CharactersModel({
    required this.charId,
    required this.name,
    required this.status,
    required this.species,
    required this.gender,
    required this.image,
  });

  factory CharactersModel.formJson(Map<String, dynamic> json) {
    return CharactersModel(
      charId: json['id'],
      name: json['name'],
      status: json['status'],
      species: json['species'],
      gender: json['gender'],
      image: json['image'],
    );
  }
}
