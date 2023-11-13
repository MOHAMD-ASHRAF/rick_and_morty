import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/error/exceptions.dart';
import 'package:rick_and_morty/core/network/error_message_model.dart';
import 'package:rick_and_morty/data/models/characters_model.dart';

class CharactersWebServices {
  Future<List<CharactersModel>> getCharacter() async {
    final response =
        await Dio().get('https://rickandmortyapi.com/api/character');
    if (response.statusCode == 200) {
      return List<CharactersModel>.from((response.data["results"] as List)
          .map((e) => CharactersModel.fromJson(e)));
    }else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

// late Dio dio;
// CharactersWebServices() {
//   BaseOptions options = BaseOptions(
//     baseUrl: baseUrl,
//     receiveDataWhenStatusError: true,
//     connectTimeout: const Duration(seconds: 20),
//     receiveTimeout: const Duration(seconds: 20),
//   );
//   dio = Dio(options);
// }
// Future<List<dynamic>> getAllCharacters() async {
//   try {
//     Response response = await dio.get('character');
//     print(response.data['results'].toString());
//     return List<CharactersModel>.from((response.data["results"] as List)
//         .map((e) => CharactersModel.fromJson(e)));
//   } catch (error) {
//     print(error.toString());
//     return [];
//   }
// }
}
