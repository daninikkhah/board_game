
class CharacterModel{
  CharacterModel({required this.id,required this.name, required this.imageUrl, this.positionId});
  final String id;
  final String name;
  final String imageUrl;
  String? positionId;
  //TODO: treats
  //TODO: suspects

void move(String cellId)=> positionId = cellId;
}