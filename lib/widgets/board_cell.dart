import 'package:flutter/material.dart';
import '../constants.dart';

class BoardCell extends StatelessWidget {
  const BoardCell({required this.height, required this.width, Key? key}) : super(key: key);
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(1),
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.indigo,
          // border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
