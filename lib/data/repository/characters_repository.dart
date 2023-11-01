import 'package:rick_and_morty/data/models/characters.dart';
import 'package:rick_and_morty/data/web_services/characters_web_services.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;

  CharactersRepository({required this.charactersWebServices});

  Future<List<CharactersModel>> getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();

    return characters.map((e) => CharactersModel.formJson(e)).toList();
  }
}
