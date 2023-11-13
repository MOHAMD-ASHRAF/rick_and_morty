import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/businees_logic/cubit/characters_cubit.dart';
import 'package:rick_and_morty/data/models/characters_model.dart';
import 'package:rick_and_morty/data/repository/characters_repository.dart';
import 'package:rick_and_morty/data/web_services/characters_web_services.dart';
import 'package:rick_and_morty/presentation/widgets/character_item.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {

  late List<CharactersModel> allCharacter;

  @override
  void initState() {
    super.initState();
    allCharacter = BlocProvider.of<CharactersCubit>(context).getAllCharacters();
  }

  Widget buildBlocWidget() {
    return BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
          if (state is CharactersLoadedSate) {
            allCharacter = (state).character;
            return buildLoadedWidget();
          } else {
            /// handel this
            return showLoadingIndicator();
          }
        }
    );
  }

  Widget showLoadingIndicator() {
    return const Center(
      child: CircularProgressIndicator(color: Colors.yellowAccent,),);
  }

  Widget buildLoadedWidget() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.yellowAccent,
        child: Column(
          children: [
            buildCharacterList(),
          ],
        ),
      ),
    );
  }


  Widget buildCharacterList() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 1,
            mainAxisExtent: 1
        ),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: allCharacter.length,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          /// todo / not done
          return CharacterItem(charactersModel: allCharacter[index],);
        });
  }

  late final CharactersRepository charactersRepository;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CharactersCubit(charactersRepository),
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.yellowAccent,
          title: const Text(
            'Characters', style: TextStyle(color: Colors.grey),),
        ),
        body: buildBlocWidget(),
      ),
    );
  }
}
