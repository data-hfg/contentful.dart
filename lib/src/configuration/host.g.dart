// GENERATED CODE - DO NOT MODIFY BY HAND

part of host;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Host _$delivery = const Host._('delivery');
const Host _$preview = const Host._('preview');

Host _$HostValueOf(String name) {
  switch (name) {
    case 'delivery':
      return _$delivery;
    case 'preview':
      return _$preview;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Host> _$HostValues = new BuiltSet<Host>(const <Host>[
  _$delivery,
  _$preview,
]);

Serializer<Host> _$hostSerializer = new _$HostSerializer();

class _$HostSerializer implements PrimitiveSerializer<Host> {
  static const Map<String, String> _toWire = const <String, String>{
    'delivery': 'cdn.contentful.com',
    'preview': 'preview.contentful.com',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'cdn.contentful.com': 'delivery',
    'preview.contentful.com': 'preview',
  };

  @override
  final Iterable<Type> types = const <Type>[Host];
  @override
  final String wireName = 'Host';

  @override
  Object serialize(Serializers serializers, Host object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Host deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Host.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
