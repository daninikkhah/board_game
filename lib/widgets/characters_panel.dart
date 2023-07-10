import 'package:board_game/control/models/character_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../control/state_management/characters_controller.dart';
import 'character_tile.dart';

class CharactersPanel extends StatelessWidget {
  const CharactersPanel({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Consumer<CharactersController>(
      builder: (context,charactersController,_){
        final Map<String,CharacterModel> characters = charactersController.characters;
        List<Widget> characterTiles = [];
        characters.forEach((key, character) {
          characterTiles.add(CharacterTile(character: character));
        });
        return Container(
          child: Column(
            children: characterTiles,
          ),
        );
      },
    );
  }
}
