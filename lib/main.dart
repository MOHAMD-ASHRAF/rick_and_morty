import 'package:flutter/material.dart';

import 'package:rick_and_morty/app_router.dart';
import 'package:rick_and_morty/presentation/screens/character_screen.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.grey.shade900
      ),
      home: CharactersScreen(),
    );
  }
}