library widget_tile;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/entry/demo/tile_view_mixin.dart';
import 'package:contentful_dart/src/models/entry/demo/widget_view.dart';

part 'widget_tile.g.dart';

abstract class WidgetTile extends Object
    with TileViewMixin<WidgetView>
    implements Built<WidgetTile, WidgetTileBuilder> {
  static Serializer<WidgetTile> get serializer => _$widgetTileSerializer;

  @override
  WidgetView get view;

  factory WidgetTile([udpates(WidgetTileBuilder b)]) = _$WidgetTile;
  WidgetTile._();
}
