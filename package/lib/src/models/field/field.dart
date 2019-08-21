library field;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

part 'field.g.dart';

/// A Field describes a single value inside an Entry.
abstract class Field implements Built<Field, FieldBuilder> {
  /// The unique identifier of this Field
  String get id;

  /// The name of this Field
  String get name;

  /// Whether this field is disabled (invisible by default in the UI)
  bool get disabled;

  /// Whether this field is localized (
  /// can have different values depending on locale)
  bool get localized;

  /// Whether this field is required (needs to have a value)
  @BuiltValueField(wireName: 'required')
  bool get isRequired;

  /// The type of this Field
  FieldType get type;

  /// The item type of this Field (a subtype if `type` is `Array` or `Link`)
  /// For `Array`s, itemType is inferred via items.type.
  /// For `Link`s, itemType is inferred via "linkType".
  @nullable
  FieldType get itemType;

  Field._();

  factory Field([updates(FieldBuilder b)]) = _$Field;

  String toJson() {
    return json
        .encode(contentfulSerializers.serializeWith(Field.serializer, this));
  }

  static Field fromJson(String jsonString) {
    return contentfulSerializers.deserializeWith(
        Field.serializer, json.decode(jsonString));
  }

  static Serializer<Field> get serializer => _$fieldSerializer;
}
