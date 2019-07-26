library field_type;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'field_type.g.dart';

/// The possible Field types in a Contentful content type.
class FieldType extends EnumClass {
  /// An array of links or symbols
  @BuiltValueEnumConst(wireName: 'Array')
  static const FieldType array = _$array;

  @BuiltValueEnumConst(wireName: 'Asset')
  static const FieldType asset = _$asset;

  @BuiltValueEnumConst(wireName: 'Boolean')
  static const FieldType boolean = _$boolean;

  @BuiltValueEnumConst(wireName: 'Date')
  static const FieldType date = _$date;

  @BuiltValueEnumConst(wireName: 'Entry')
  static const FieldType entry = _$entry;

  @BuiltValueEnumConst(wireName: 'Integer')
  static const FieldType integer = _$integer;

  @BuiltValueEnumConst(wireName: 'Link')
  static const FieldType link = _$link;

  @BuiltValueEnumConst(wireName: 'Location')
  static const FieldType location = _$location;

  @BuiltValueEnumConst(wireName: 'Number')
  static const FieldType number = _$number;

  @BuiltValueEnumConst(wireName: 'Object')
  static const FieldType object = _$object;

  @BuiltValueEnumConst(wireName: 'Symbol')
  static const FieldType symbol = _$symbol;

  @BuiltValueEnumConst(wireName: 'Text')
  static const FieldType text = _$text;

  @BuiltValueEnumConst(wireName: 'None')
  static const FieldType none = _$none;

  @BuiltValueEnumConst(wireName: 'RichText')
  static const FieldType richText = _$richText;

  static Serializer<FieldType> get serializer => _$fieldTypeSerializer;

  const FieldType._(String name) : super(name);
  static BuiltSet<FieldType> get values => _$FieldTypeValues;
  static FieldType valueOf(String name) => _$FieldTypeValueOf(name);
}
