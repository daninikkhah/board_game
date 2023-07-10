import 'package:flutter/material.dart';
import 'board_cell.dart';
import '../constants.dart';

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double height = ((screenHeight - kRowsCount*2) - 20) / kRowsCount;
     double width = (screenWidth- kColumnsCount*2) /kColumnsCount;
    width = height;
    return Column(
      children: [
        Row(
          children: [
            BoardCell(width: width, height: height,),
            BoardCell(width: width, height: height,),
            BoardCell(width: width, height: height,),
            BoardCell(width: width, height: height,),
            BoardCell(width: width, height: height,),
          ],
        ),
        Row(
          children: [
            BoardCell(width: width, height: height,),
            SizedBox(width: width* 3+6, height: height),
            BoardCell(width: width, height: height,),
          ],
        ),
        Row(
          children: [
            BoardCell(width: width, height: height,),
            SizedBox(width: width* 3 +6, height: height),
            BoardCell(width: width, height: height,),
          ],
        ),
        Row(
          children: [
            BoardCell(width: width, height: height,),
            SizedBox(width: width* 3+6, height: height),
            BoardCell(width: width, height: height,),
          ],
        ),
        Row(
          children: [
            BoardCell(width: width, height: height,),
            BoardCell(width: width, height: height,),
            BoardCell(width: width, height: height,),
            BoardCell(width: width, height: height,),
            BoardCell(width: width, height: height,),
          ],
        ),
      ],
    );
  }
}
