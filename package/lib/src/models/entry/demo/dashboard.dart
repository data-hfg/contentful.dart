library dashboard;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/entry/demo/tile.dart';

part 'dashboard.g.dart';

abstract class Dashboard implements Built<Dashboard, DashboardBuilder> {
  static Serializer<Dashboard> get serializer => _$dashboardSerializer;

  int get entity;
  int get id;
  String get name;
  bool get defaultRoomDashboard;
  bool get external;
  String get publicUrlKey;
  bool get subscriptionRequired;
  int get container;
  String get containerName;
  BuiltSet<Tile> get tiles;

  factory Dashboard([updates(DashboardBuilder b)]) = _$Dashboard;
  Dashboard._();
}
