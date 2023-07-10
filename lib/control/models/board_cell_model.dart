import 'character_model.dart';

class BoardCellModel {
  BoardCellModel({required this.id,required this.y,required this.x});
  final String id;
  final int x;
  final int y;
  List<CharacterModel> characters =[];
}
