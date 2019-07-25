// GENERATED CODE - DO NOT MODIFY BY HAND

part of endpoint;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Endpoint _$spaces = const Endpoint._('spaces');
const Endpoint _$contentTypes = const Endpoint._('contentTypes');
const Endpoint _$entries = const Endpoint._('entries');
const Endpoint _$assets = const Endpoint._('assets');
const Endpoint _$locales = const Endpoint._('locales');
const Endpoint _$sync = const Endpoint._('sync');

Endpoint _$EndpointValueOf(String name) {
  switch (name) {
    case 'spaces':
      return _$spaces;
    case 'contentTypes':
      return _$contentTypes;
    case 'entries':
      return _$entries;
    case 'assets':
      return _$assets;
    case 'locales':
      return _$locales;
    case 'sync':
      return _$sync;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Endpoint> _$EndpointValues =
    new BuiltSet<Endpoint>(const <Endpoint>[
  _$spaces,
  _$contentTypes,
  _$entries,
  _$assets,
  _$locales,
  _$sync,
]);

Serializer<Endpoint> _$endpointSerializer = new _$EndpointSerializer();

class _$EndpointSerializer implements PrimitiveSerializer<Endpoint> {
  static const Map<String, String> _toWire = const <String, String>{
    'contentTypes': 'content_types',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'content_types': 'contentTypes',
  };

  @override
  final Iterable<Type> types = const <Type>[Endpoint];
  @override
  final String wireName = 'Endpoint';

  @override
  Object serialize(Serializers serializers, Endpoint object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Endpoint deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Endpoint.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
