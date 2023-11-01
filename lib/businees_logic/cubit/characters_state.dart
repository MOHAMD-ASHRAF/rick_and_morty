part of 'characters_cubit.dart';

@immutable
sealed class CharactersState {}

final class CharactersInitial extends CharactersState {}

final class CharactersLoadedSate extends CharactersState {
  final List<CharactersModel> character;

  CharactersLoadedSate({required this.character});
}
