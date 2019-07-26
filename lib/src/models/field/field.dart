library field;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful.dart/src/models/models.dart';

part 'field.g.dart';

abstract class Field implements Built<Field, FieldBuilder> {
  String get id;
  String get name;
  bool get disabled;
  bool get localized;

  @BuiltValueField(wireName: 'required')
  bool get isRequired;

  FieldType get type;

  FieldType get itemType;

  Field._();

  factory Field([updates(FieldBuilder b)]) = _$Field;

  String toJson() {
    return json.encode(serializers.serializeWith(Field.serializer, this));
  }

  static Field fromJson(String jsonString) {
    return serializers.deserializeWith(
        Field.serializer, json.decode(jsonString));
  }

  static Serializer<Field> get serializer => _$fieldSerializer;
}
