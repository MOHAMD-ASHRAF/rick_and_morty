


import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/exceptions.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/data/models/characters_model.dart';
import 'package:rick_and_morty/data/web_services/characters_web_services.dart';

class CharactersRepository {

  final CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);
  Future<Either<Failure, List<CharactersModel>>> getAllCharacters() async {
    final result = await charactersWebServices.getCharacter();
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}
