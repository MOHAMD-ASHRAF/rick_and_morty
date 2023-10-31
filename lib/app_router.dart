import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/strings/route.dart';
import 'package:rick_and_morty/presentation/screens/character_screen.dart';
import 'package:rick_and_morty/presentation/screens/characters_details_screen.dart';

class AppRputer {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => const CharactersScreen());

      case charactersDetailsScreen:
        return MaterialPageRoute(
            builder: (_) => const CharactersDetailsScreen());
    }
    return null;
  }
}
