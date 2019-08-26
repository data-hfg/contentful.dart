library content_type;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

part 'content_type.g.dart';

/// A `ContentType` represents your content model
/// for entries in a Contentful space.
abstract class ContentType implements Built<ContentType, ContentTypeBuilder> {
  static Serializer<ContentType> get serializer => _$contentTypeSerializer;

  factory ContentType([void Function(ContentTypeBuilder) updates]) =
      _$ContentType;

  ContentType._();

  /// Resource type ("ContentTypeId").
  @memoized
  String get contentId => sys.id;

  /// The description of this content type.
  @nullable
  String get description;

  /// The fields which are part of this content type.
  BuiltList<Field> get fields;

  /// The name of this content type.
  String get name;

  /// System fields.
  SystemFields get sys;

  /// Resource type ("ContentType").
  @memoized
  String get type => sys.type;

  String toJson() {
    return json.encode(
        contentfulSerializers.serializeWith(ContentType.serializer, this));
  }

  static ContentType fromJson(String jsonString) {
    return contentfulSerializers.deserializeWith(
        ContentType.serializer, json.decode(jsonString));
  }
}
