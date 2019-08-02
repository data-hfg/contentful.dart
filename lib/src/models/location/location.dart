library location;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

part 'location.g.dart';

/// Small class to store location coordinates.
/// This is used in preferences over CoreLocation types to avoid
/// extra linking requirements for the SDK.
abstract class Location implements Built<Location, LocationBuilder> {
  /// The latitude of this location coordinate.
  double get latitude;

  /// The longitude of this location coordinate.
  double get longitude;

  Location._();

  factory Location([updates(LocationBuilder b)]) = _$Location;

  String toJson() {
    return json.encode(serializers.serializeWith(Location.serializer, this));
  }

  static Location fromJson(String jsonString) {
    return serializers.deserializeWith(
        Location.serializer, json.decode(jsonString));
  }

  static Serializer<Location> get serializer => _$locationSerializer;
}
