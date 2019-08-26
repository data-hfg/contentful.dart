library link;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

part 'link.g.dart';

/// A representation of Linked Resources that a field may point
/// to in your content model.
/// This stateful type safely highlights links that have been resolved
/// to entries, resolved to assets, or remain unresolved.
abstract class Link implements Built<Link, LinkBuilder> {
  static Serializer<Link> get serializer => _$linkSerializer;

  factory Link([void Function(LinkBuilder) updates]) = _$Link;

  Link._();

  /// The Link points to an `Asset`.
  @nullable
  Asset get asset;

  /// The Link points to an `Entry`.
  @nullable
  Entry get entry;

  /// The system properties which describe the link.
  SystemFields get sys;

  String toJson() {
    return json
        .encode(contentfulSerializers.serializeWith(Link.serializer, this));
  }

  static Link fromJson(String jsonString) {
    return contentfulSerializers.deserializeWith(
        Link.serializer, json.decode(jsonString));
  }
}
