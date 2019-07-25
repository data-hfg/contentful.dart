library endpoint;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'endpoint.g.dart';

// Endpoints that are available for the Content Delivery and Preview APIs.
class Endpoint extends EnumClass {
  /// The spaces endpoint; also the base-path for all other endpoints.
  static const Endpoint spaces = _$spaces;

  /// The content types endpoint.
  @BuiltValueEnumConst(wireName: 'content_types')
  static const Endpoint contentTypes = _$contentTypes;

  /// The entries endpoint.
  static const Endpoint entries = _$entries;

  /// The assets endpoint.
  static const Endpoint assets = _$assets;

  /// The locales endpoint.
  static const Endpoint locales = _$locales;

  /// The synchronization endpoint.
  static const Endpoint sync = _$sync;

  static Serializer<Endpoint> get serializer => _$endpointSerializer;

  const Endpoint._(String name) : super(name);
  static BuiltSet<Endpoint> get values => _$EndpointValues;
  static Endpoint valueOf(String name) => _$EndpointValueOf(name);
}
