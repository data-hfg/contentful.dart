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
  static Serializer<SystemFields> get serializer => _$systemFieldsSerializer;

  factory SystemFields([updates(SystemFieldsBuilder b)]) = _$SystemFields;

  SystemFields._();

  /// The link describing the resource type.
  /// Not present on `Asset` or `ContentType` resources.
  @nullable
  String get contentType;

  /// The identifier for the content type, if the resource is an `Entry`.
  @nullable
  String get contentTypeId;

  /// Describes the date the resource was created.
  @nullable
  String get createdAt;

  /// Link to creating user.
  @nullable
  String get createdBy;

  ///  Time resource was first published.
  @nullable
  String get firstPublishedAt;

  /// The unique identifier of the resource.
  @nullable
  String get id;

  /// The code for the currently selected locale.
  @nullable
  String get locale; // Link

  /// Time resource was published.
  @nullable
  String get publishedAt;

  /// Link to publishing user.
  @nullable
  String get publishedBy;

  /// Number of times resource was published.
  @nullable
  int get publishedCounter;

  /// Published version of resource.
  @nullable
  int get publishedVersion;

  /// The number denoting what the published version of the resource is.
  @nullable
  int get revision;

  /// Describes the space.
  @nullable
  Space get space;

  /// The type identifier of the resource.
  @nullable
  String get type;

  /// Describes the date the resource was last updated.
  @nullable
  String get updatedAt;

  /// Link to updating user.
  @nullable
  String get updatedBy;

  /// Current version of resource.
  @nullable
  int get version;

  String toJson() {
    return json
        .encode(serializers.serializeWith(SystemFields.serializer, this));
  }

  static SystemFields fromJson(String jsonString) {
    return serializers.deserializeWith(
        SystemFields.serializer, json.decode(jsonString));
  }
}
