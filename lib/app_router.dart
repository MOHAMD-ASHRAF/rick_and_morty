import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/screens/character_screen.dart';

class AppRputer {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const CharactersScreen());
    }
    return null;
  }
}
