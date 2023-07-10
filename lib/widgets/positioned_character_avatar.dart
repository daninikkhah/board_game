import 'package:flutter/material.dart';
import '../control/models/character_model.dart';
import 'character_avatar.dart';

class PositionedCharacterAvatar extends StatelessWidget {
  const PositionedCharacterAvatar({Key? key, required this.positionFromLeft, required this.positionFromTop, required this.character}) : super(key: key);

  final double positionFromTop;
  final double positionFromLeft;
  final CharacterModel character;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: positionFromTop,
      left: positionFromLeft,
      child: CharacterAvatar(character: character,)
    );
  }
}


