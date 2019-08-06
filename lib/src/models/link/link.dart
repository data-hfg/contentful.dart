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
  /// The system properties which describe the link.
  SystemFields get sys;

  /// The Link points to an `Asset`.
  @nullable
  Asset get asset;

  /// The Link points to an `Entry`.
  @nullable
  Entry get entry;

  Link._();

  factory Link([updates(LinkBuilder b)]) = _$Link;

  String toJson() {
    return json.encode(serializers.serializeWith(Link.serializer, this));
  }

  static Link fromJson(String jsonString) {
    return serializers.deserializeWith(
        Link.serializer, json.decode(jsonString));
  }

  static Serializer<Link> get serializer => _$linkSerializer;
}
