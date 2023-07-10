import 'package:flutter/foundation.dart';
import '../models/character_model.dart';

class CharactersController with ChangeNotifier {
  Map<String, CharacterModel> characters = {
    '1': CharacterModel(
        id: '1`', name: 'name', imageUrl: 'lib/assets/images/0000.png'),
    '2': CharacterModel(
        id: '2', name: 'name', imageUrl: 'lib/assets/images/0001.png'),
    '3': CharacterModel(
        id: '3', name: 'name', imageUrl: 'lib/assets/images/0110.png'),
    '4': CharacterModel(
        id: '4', name: 'name', imageUrl: 'lib/assets/images/0111.png'),
    '5': CharacterModel(
        id: '5', name: 'name', imageUrl: 'lib/assets/images/1001.png'),
    '6': CharacterModel(
        id: '6', name: 'name', imageUrl: 'lib/assets/images/1010.png'),
    '7': CharacterModel(
        id: '7', name: 'name', imageUrl: 'lib/assets/images/1100.png'),
    '8': CharacterModel(
        id: '8', name: 'name', imageUrl: 'lib/assets/images/1111.png'),
  };

  moveCharacter(String characterId, String destinationCellId){
    characters[characterId]?.move(destinationCellId);
    notifyListeners();
  }
}
