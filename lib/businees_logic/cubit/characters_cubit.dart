import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:rick_and_morty/data/models/characters_model.dart';
import 'package:rick_and_morty/data/repository/characters_repository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
   List<CharactersModel> characters = [];
  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  List<CharactersModel> getAllCharacters() {
    try{
      charactersRepository.getAllCharacters();
      emit(CharactersLoadedSate(character: characters));
    }catch(e){
      print(e);
    }
    return characters;
  }
}
