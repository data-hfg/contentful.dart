library field;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

part 'field.g.dart';

/// A Field describes a single value inside an Entry.
abstract class Field implements Built<Field, FieldBuilder> {
  static Serializer<Field> get serializer => _$fieldSerializer;

  factory Field([void Function(FieldBuilder) updates]) = _$Field;

  Field._();

  /// Whether this field is disabled (invisible by default in the UI)
  bool get disabled;

  /// The unique identifier of this Field
  String get id;

  /// Whether this field is required (needs to have a value)
  @BuiltValueField(wireName: 'required')
  bool get isRequired;

  /// The item type of this Field (a subtype if `type` is `Array` or `Link`)
  /// For `Array`s, itemType is inferred via items.type.
  /// For `Link`s, itemType is inferred via "linkType".
  @nullable
  FieldType get itemType;

  /// Whether this field is localized (
  /// can have different values depending on locale)
  bool get localized;

  /// The name of this Field
  String get name;

  /// The type of this Field
  FieldType get type;

  String toJson() {
    return json
        .encode(contentfulSerializers.serializeWith(Field.serializer, this));
  }

  static Field fromJson(String jsonString) {
    return contentfulSerializers.deserializeWith(
        Field.serializer, json.decode(jsonString));
  }
}
