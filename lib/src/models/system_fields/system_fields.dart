library system_fields;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

part 'system_fields.g.dart';

/// The system fields available on all resources in Contentful. At minimum,
/// all resources have an `id` and a `type` available.
abstract class SystemFields
    implements Built<SystemFields, SystemFieldsBuilder> {
  /// The unique identifier of the resource.
  @nullable
  String get id;

  /// The type identifier of the resource.
  @nullable
  String get type;

  /// Describes the date the resource was created.
  @nullable
  DateTime get createdAt;

  /// Describes the date the resource was last updated.
  @nullable
  DateTime get updatedAt;

  /// The code for the currently selected locale.
  @nullable
  String get locale;

  /// The identifier for the content type, if the resource is an `Entry`.
  @nullable
  String get contentTypeId;

  /// The number denoting what the published version of the resource is.
  @nullable
  int get revision;

  @nullable
  int get version;

  /// The link describing the resource type.
  /// Not present on `Asset` or `ContentType` resources.
  @nullable
  String get contentType; // Link

  SystemFields._();

  factory SystemFields([updates(SystemFieldsBuilder b)]) = _$SystemFields;

  String toJson() {
    return json
        .encode(serializers.serializeWith(SystemFields.serializer, this));
  }

  static SystemFields fromJson(String jsonString) {
    return serializers.deserializeWith(
        SystemFields.serializer, json.decode(jsonString));
  }

  static Serializer<SystemFields> get serializer => _$systemFieldsSerializer;
}
