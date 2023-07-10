import 'package:flutter/foundation.dart';
import '../models/board_cell_model.dart';
import '../../map.dart';
import '../models/character_model.dart';

class BoardController with ChangeNotifier{
  Map<String,BoardCellModel> cells  = map;

  void moveCharacter(CharacterModel? character,String destinationCellId){

    if(character!= null) {
      if(character.positionId == null){
        cells['00']?.characters.add(character);
      } else {
        cells[character.positionId]
            ?.characters
            .removeWhere((element) => character.id == element.id);
        cells[destinationCellId]?.characters.add(character);
      }
      // print('character : ${character.id}, cell: ${character.positionId}');
      notifyListeners();
    }
  }
}