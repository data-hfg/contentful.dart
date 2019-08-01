library content_type;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful.dart/src/models/models.dart';

part 'content_type.g.dart';

/// A `ContentType` represents your content model
/// for entries in a Contentful space.
abstract class ContentType implements Built<ContentType, ContentTypeBuilder> {
  /// System fields.
  Sys get sys;

  /// The fields which are part of this content type.
  BuiltList<Field> get fields;

  /// The name of this content type.
  String get name;

  /// The description of this content type.
  @nullable
  String get description;

  /// Resource type ("ContentType").
  @memoized
  String get type => sys.type;

  ContentType._();

  factory ContentType([updates(ContentTypeBuilder b)]) = _$ContentType;

  String toJson() {
    return json.encode(serializers.serializeWith(ContentType.serializer, this));
  }

  static ContentType fromJson(String jsonString) {
    return serializers.deserializeWith(
        ContentType.serializer, json.decode(jsonString));
  }

  static Serializer<ContentType> get serializer => _$contentTypeSerializer;
}
