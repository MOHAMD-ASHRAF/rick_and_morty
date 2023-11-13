// import 'package:rick_and_morty/data/models/characters_model.dart';
// import 'package:rick_and_morty/data/models/info_model.dart';
//
// class CharactersResponseModel{
//   final InfoModel info;
//   final List<CharactersModel> result;
//
//   CharactersResponseModel({required this.info, required this.result});
//   factory CharactersResponseModel.fromJson(Map<String , dynamic> json){
//     for(var c in json['result']){
//       CharactersModel temp = CharactersModel.fromJson(c);
//       result.add(temp);
//     };
//     return CharactersResponseModel(
//         info: InfoModel.fromJson(json['info']),
//         result: result);
//   }
//
// }