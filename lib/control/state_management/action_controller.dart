import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'board_controller.dart';
import 'characters_controller.dart';
import '../models/character_model.dart';

 class ActionController{
  static void move(
      {required BuildContext context,required String characterId,required String destinationId}){
    final CharactersController charactersController = Provider.of<CharactersController>(context,listen: false);
    CharacterModel? character = charactersController.characters[characterId];
    Provider.of<BoardController>(context,listen: false).moveCharacter(character, destinationId);
    charactersController.moveCharacter(characterId, destinationId);
  }
}