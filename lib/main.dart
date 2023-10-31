import 'package:flutter/material.dart';

import 'package:rick_and_morty/app_router.dart';

void main() {
  runApp(RickAndMortyApp(
    appRputer: AppRputer(),
  ));
}

class RickAndMortyApp extends StatelessWidget {
  final AppRputer appRputer;

  const RickAndMortyApp({super.key, required this.appRputer});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: appRputer.generateRoute,
    );
  }
}
