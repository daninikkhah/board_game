import 'package:board_game/control/state_management/characters_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/board.dart';
import '../widgets/character_renderer.dart';
import '../map.dart';
import '../constants.dart';
import '../widgets/characters_panel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double height = ((screenHeight - kRowsCount*2) - 20) / kRowsCount;
    double width = (screenWidth- kColumnsCount*2) /kColumnsCount;
    width = height;
    return  Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          children: [
           const CharactersPanel(),
            const Spacer(),
            Center(
              child: Consumer<CharactersController>(
                  builder: (context, characters,_) =>   Stack(
                    children: [
                       const Board(),
                      ...getPositionedCharacters(charactersData: characters.characters, cellsData: map, cellWidth: width, cellHeight: height, characterAvatarRadius: 30)
                    ],
                  ),
                )

               ,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
