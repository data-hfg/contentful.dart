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
  static Serializer<Space> get serializer => _$spaceSerializer;

  factory Space([void Function(SpaceBuilder) updates]) = _$Space;

  Space._();

  /// Available locales for this Space
  BuiltList<Locale> get locales;

  /// The name of this Space.
  @nullable
  String get name;

  /// System fields.
  SystemFields get sys;

  String toJson() {
    return json
        .encode(contentfulSerializers.serializeWith(Space.serializer, this));
  }

  static Space fromJson(String jsonString) {
    return contentfulSerializers.deserializeWith(
        Space.serializer, json.decode(jsonString));
  }
}
