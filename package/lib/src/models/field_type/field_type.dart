library field_type;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'field_type.g.dart';

/// The possible Field types in a Contentful content type.
class FieldType extends EnumClass {
  /// An array of links or symbols
  @BuiltValueEnumConst(wireName: 'Array')
  static const FieldType array = _$array;

  /// A link to an Asset
  @BuiltValueEnumConst(wireName: 'Asset')
  static const FieldType asset = _$asset;

  /// A boolean value, true or false
  @BuiltValueEnumConst(wireName: 'Boolean')
  static const FieldType boolean = _$boolean;

  /// A date value with optional time component
  @BuiltValueEnumConst(wireName: 'Date')
  static const FieldType date = _$date;

  /// A link to an Entry
  @BuiltValueEnumConst(wireName: 'Entry')
  static const FieldType entry = _$entry;

  /// A numeric integer value
  @BuiltValueEnumConst(wireName: 'Integer')
  static const FieldType integer = _$integer;

  /// A link to an Asset or Entry
  @BuiltValueEnumConst(wireName: 'Link')
  static const FieldType link = _$link;

  /// A location value, consists of latitude and longitude
  @BuiltValueEnumConst(wireName: 'Location')
  static const FieldType location = _$location;

  /// A floating point number value
  @BuiltValueEnumConst(wireName: 'Number')
  static const FieldType number = _$number;

  /// A JSON object value
  @BuiltValueEnumConst(wireName: 'Object')
  static const FieldType object = _$object;

  /// A short text string, can be part of an array
  @BuiltValueEnumConst(wireName: 'Symbol')
  static const FieldType symbol = _$symbol;

  /// A longer text string
  @BuiltValueEnumConst(wireName: 'Text')
  static const FieldType text = _$text;

  /// An unknown kind of value
  @BuiltValueEnumConst(wireName: 'None')
  static const FieldType none = _$none;

  /// The rich text field type.
  @BuiltValueEnumConst(wireName: 'RichText')
  static const FieldType richText = _$richText;

  static Serializer<FieldType> get serializer => _$fieldTypeSerializer;

  static BuiltSet<FieldType> get values => _$FieldTypeValues;
  const FieldType._(String name) : super(name);
  static FieldType valueOf(String name) => _$FieldTypeValueOf(name);
}
