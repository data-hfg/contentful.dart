// GENERATED CODE - DO NOT MODIFY BY HAND

part of field_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FieldType _$array = const FieldType._('array');
const FieldType _$asset = const FieldType._('asset');
const FieldType _$boolean = const FieldType._('boolean');
const FieldType _$date = const FieldType._('date');
const FieldType _$entry = const FieldType._('entry');
const FieldType _$integer = const FieldType._('integer');
const FieldType _$link = const FieldType._('link');
const FieldType _$location = const FieldType._('location');
const FieldType _$number = const FieldType._('number');
const FieldType _$object = const FieldType._('object');
const FieldType _$symbol = const FieldType._('symbol');
const FieldType _$text = const FieldType._('text');
const FieldType _$none = const FieldType._('none');
const FieldType _$richText = const FieldType._('richText');

FieldType _$FieldTypeValueOf(String name) {
  switch (name) {
    case 'array':
      return _$array;
    case 'asset':
      return _$asset;
    case 'boolean':
      return _$boolean;
    case 'date':
      return _$date;
    case 'entry':
      return _$entry;
    case 'integer':
      return _$integer;
    case 'link':
      return _$link;
    case 'location':
      return _$location;
    case 'number':
      return _$number;
    case 'object':
      return _$object;
    case 'symbol':
      return _$symbol;
    case 'text':
      return _$text;
    case 'none':
      return _$none;
    case 'richText':
      return _$richText;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<FieldType> _$FieldTypeValues =
    new BuiltSet<FieldType>(const <FieldType>[
  _$array,
  _$asset,
  _$boolean,
  _$date,
  _$entry,
  _$integer,
  _$link,
  _$location,
  _$number,
  _$object,
  _$symbol,
  _$text,
  _$none,
  _$richText,
]);

Serializer<FieldType> _$fieldTypeSerializer = new _$FieldTypeSerializer();

class _$FieldTypeSerializer implements PrimitiveSerializer<FieldType> {
  static const Map<String, String> _toWire = const <String, String>{
    'array': 'Array',
    'asset': 'Asset',
    'boolean': 'Boolean',
    'date': 'Date',
    'entry': 'Entry',
    'integer': 'Integer',
    'link': 'Link',
    'location': 'Location',
    'number': 'Number',
    'object': 'Object',
    'symbol': 'Symbol',
    'text': 'Text',
    'none': 'None',
    'richText': 'RichText',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'Array': 'array',
    'Asset': 'asset',
    'Boolean': 'boolean',
    'Date': 'date',
    'Entry': 'entry',
    'Integer': 'integer',
    'Link': 'link',
    'Location': 'location',
    'Number': 'number',
    'Object': 'object',
    'Symbol': 'symbol',
    'Text': 'text',
    'None': 'none',
    'RichText': 'richText',
  };

  @override
  final Iterable<Type> types = const <Type>[FieldType];
  @override
  final String wireName = 'FieldType';

  @override
  Object serialize(Serializers serializers, FieldType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FieldType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FieldType.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
