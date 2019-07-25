library host;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'host.g.dart';

/// Some default values that the SDK uses.
class Host extends EnumClass {
  /// The path for the Contentful Delivery API.
  @BuiltValueEnumConst(wireName: 'cdn.contentful.com')
  static const Host delivery = _$delivery;

  /// The path for the Contentful Preview API.
  @BuiltValueEnumConst(wireName: 'preview.contentful.com')
  static const Host preview = _$preview;

  static Serializer<Host> get serializer => _$hostSerializer;

  const Host._(String name) : super(name);
  static BuiltSet<Host> get values => _$HostValues;
  static Host valueOf(String name) => _$HostValueOf(name);
}
