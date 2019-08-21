library location;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

part 'location.g.dart';

/// Class to store location coordinates.
abstract class Location implements Built<Location, LocationBuilder> {
  /// The latitude of this location coordinate.
  @BuiltValueField(wireName: 'lat')
  double get latitude;

  /// The longitude of this location coordinate.
  @BuiltValueField(wireName: 'lon')
  double get longitude;

  Location._();

  factory Location([updates(LocationBuilder b)]) = _$Location;

  String toJson() {
    return json
        .encode(contentfulSerializers.serializeWith(Location.serializer, this));
  }

  static Location fromJson(String jsonString) {
    return contentfulSerializers.deserializeWith(
        Location.serializer, json.decode(jsonString));
  }

  static Serializer<Location> get serializer => _$locationSerializer;
}
