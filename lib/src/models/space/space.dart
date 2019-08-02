library space;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

part 'space.g.dart';

/// A Space represents a collection of content types,
/// locales, assets, and entries in Contentful.
abstract class Space implements Built<Space, SpaceBuilder> {
  /// System fields.
  SystemFields get sys;

  /// Available locales for this Space
  BuiltList<Locale> get locales;

  /// The name of this Space.
  String get name;

  Space._();

  factory Space([updates(SpaceBuilder b)]) = _$Space;

  String toJson() {
    return json.encode(serializers.serializeWith(Space.serializer, this));
  }

  static Space fromJson(String jsonString) {
    return serializers.deserializeWith(
        Space.serializer, json.decode(jsonString));
  }

  static Serializer<Space> get serializer => _$spaceSerializer;
}
