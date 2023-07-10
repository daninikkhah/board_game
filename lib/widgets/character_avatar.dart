import 'package:flutter/material.dart';
import '../constants.dart';
import '../control/models/character_model.dart';

class CharacterAvatar extends StatelessWidget {
  const CharacterAvatar({required this.character,this.radius = kCharacterAvatarRadius ,Key? key}) : super(key: key);
  final CharacterModel character;
  final int radius;
  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: 31,
      backgroundColor: Colors.deepOrange,
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.transparent,
        foregroundImage:
        AssetImage(character.imageUrl),
        // child:  ClipOval(
        //   child: Image(
        //     fit: BoxFit.contain,
        //     image: AssetImage('lib/assets/images/0000.png'),
        //   ),
        // )
      ),
    );
  }
}
