import 'package:flutter/material.dart';
import '../control/models/character_model.dart';
import 'character_avatar.dart';
import '../control/state_management/action_controller.dart';
import '../control/business_logic/cell_id.dart';

class CharacterTile extends StatelessWidget {
  const CharacterTile({required this.character,Key? key}) : super(key: key);
  final CharacterModel character;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: const BoxDecoration(
          color: Colors.orangeAccent,
          // border: Border.all(),
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),

      child: Row(
        children: [
          CharacterAvatar(character: character),
          const SizedBox( width: 20),
          IconButton(onPressed: (){
            ActionController.move(context: context, characterId: character.id, destinationId: CellId.next(character.positionId));
          }, icon: const Icon(Icons.arrow_forward_sharp))
        ],
      )
    );
  }
}
