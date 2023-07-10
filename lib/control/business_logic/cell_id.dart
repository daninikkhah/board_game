import 'package:board_game/constants.dart';

class CellId{
  static String next(String? currentCellId){
    if(currentCellId == null)
      return '00';
    int y = int.parse(currentCellId[0]);
    int x = int.parse(currentCellId[1]);
    if( y == 0){
      x<kColumnsCount -1? x++:y++;
    } else if( x == kColumnsCount-1){
      print('here');
      y == kRowsCount-1? x-- : y++;
    }
    else if(y == kRowsCount-1){
      x>0? x--: y--;
    } else if(x==0){
      y --;
    }
    print('current cell: $currentCellId, next cell: $y$x');
    return '$y$x';
  }
}