import 'dart:math';
import 'positioned_character_avatar.dart';
import '../control/models/character_model.dart';
import '../control/models/board_cell_model.dart';
import '../constants.dart';

const double kCharacterMargin = 12;

List<PositionedCharacterAvatar> getPositionedCharacters(
    {required Map<String,CharacterModel> charactersData,
    required Map<String,BoardCellModel> cellsData,
    required double cellWidth,
    required double cellHeight,
    required int characterAvatarRadius}) {
  List<PositionedCharacterAvatar> characters = [];

  cellsData.forEach((key, cell) {
    int cellMatesCount = cell.characters.length;
    double baseHeight = cell.y * (cellHeight + 1) - 5;
    double baseWidth = cell.x * (cellWidth + 1);

    for (int i = 0; i < cellMatesCount; i++) {
      double heightInsideCell;
      double widthInsideCell;
      CharacterModel currentCharacter = cell.characters[i];

      switch (cellMatesCount) {
        case 1:
          heightInsideCell = cellHeight / 2 - characterAvatarRadius;
          widthInsideCell = cellWidth / 2 - characterAvatarRadius;
          break;
        case 2:
          heightInsideCell = cellHeight / 2 - characterAvatarRadius;
          widthInsideCell =
          (cellWidth / 3 * (i  + 1) - characterAvatarRadius + i%2 * kCharacterMargin); // TODO: fix margin: use pow(-1, i+1) * kCharacterMargin/2 ?
          break;
        case 3:
          if(i<2){
            heightInsideCell = cellHeight / 3  - characterAvatarRadius;
            widthInsideCell = i % 2 == 0? cellWidth / 3 - characterAvatarRadius - kCharacterMargin/2 : cellWidth / 3 * 2 - characterAvatarRadius + kCharacterMargin/2;
            print(widthInsideCell);
          }
          else{
            heightInsideCell = cellHeight / 3 * 2 - characterAvatarRadius +kCharacterMargin;
            widthInsideCell = (cellWidth / 2 - characterAvatarRadius) ;
          }

          break;
        case 4:
          if(i<2){
            heightInsideCell = cellHeight / 3  - characterAvatarRadius;
            widthInsideCell = cellWidth / 3 * (i%2  + 1) - characterAvatarRadius + i%2 * kCharacterMargin;
          }
          else{
            heightInsideCell = cellHeight / 3 * 2 - characterAvatarRadius + kCharacterMargin;
            widthInsideCell = cellWidth / 3 * (i%2  + 1) - characterAvatarRadius + i%2 * kCharacterMargin;
          }
          break;
        default:
          heightInsideCell = cellHeight / 2 - characterAvatarRadius;
          widthInsideCell = cellWidth / 2 - characterAvatarRadius;
      }
      double height = baseHeight + heightInsideCell;
      double width = baseWidth + widthInsideCell;

      characters.add(PositionedCharacterAvatar(
          positionFromLeft: width,
          positionFromTop: height,
          character: currentCharacter));
    }

  });

  return characters;
}
