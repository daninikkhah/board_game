import 'control/models/board_cell_model.dart';
import 'control/models/character_model.dart';

Map<String, BoardCellModel> map = {
  '00': BoardCellModel(id: '00', y: 0, x: 0),
  '01': BoardCellModel(id: '01', y: 0, x: 1),
  '02': BoardCellModel(id: '02', y: 0, x: 2),
  '03': BoardCellModel(id: '03', y: 0, x: 3),
  '04': BoardCellModel(id: '04', y: 0, x: 4),
  '14': BoardCellModel(id: '14', y: 1, x: 4),
  '24': BoardCellModel(id: '24', y: 2, x: 4),
  '34': BoardCellModel(id: '34', y: 3, x: 4),
  '44': BoardCellModel(id: '44', y: 4, x: 4),
  '43': BoardCellModel(id: '43', y: 4, x: 3),
  '42': BoardCellModel(id: '42', y: 4, x: 2),
  '41': BoardCellModel(id: '41', y: 4, x: 1),
  '40': BoardCellModel(id: '40', y: 4, x: 0),
  '30': BoardCellModel(id: '30', y: 3, x: 0),
  '20': BoardCellModel(id: '20', y: 2, x: 0),
  '10': BoardCellModel(id: '10', y: 1, x: 0),
};
