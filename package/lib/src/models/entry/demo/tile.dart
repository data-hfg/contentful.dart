library tile;

import 'package:built_value/built_value.dart';
import 'package:contentful_dart/src/models/entry/demo/tile_view_mixin.dart';

part 'tile.g.dart';

@BuiltValue(instantiable: false)
abstract class Tile<T> extends Object
    with TileViewMixin<T>
    implements Built<Tile<T>, TileBuilder<T>> {
  int get id;
  TileType get type;
  int get dashboard;
  int get order;
  bool get expanded;
  @override
  T get view;
}
