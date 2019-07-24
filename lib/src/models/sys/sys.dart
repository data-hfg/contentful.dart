library sys;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful.dart/src/models/models.dart';

part 'sys.g.dart';

/// The system fields available on all resources in Contentful. At minimum,
/// all resources have an `id` and a `type` available.
abstract class Sys implements Built<Sys, SysBuilder> {
  /// The unique identifier of the resource.
  String get id;

  /// The type identifier of the resource.
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
  int get revision;

  /// The link describing the resource type.
  /// Not present on `Asset` or `ContentType` resources.
  @nullable
  String get contentType; // Link

  Sys._();

  factory Sys([updates(SysBuilder b)]) = _$Sys;

  String toJson() {
    return json.encode(serializers.serializeWith(Sys.serializer, this));
  }

  static Sys fromJson(String jsonString) {
    return serializers.deserializeWith(Sys.serializer, json.decode(jsonString));
  }

  static Serializer<Sys> get serializer => _$sysSerializer;
}
