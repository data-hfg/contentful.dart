library asset;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful.dart/src/models/models.dart';

part 'asset.g.dart';

abstract class Asset implements Built<Asset, AssetBuilder> {
  // fields go here

  Asset._();

  factory Asset([updates(AssetBuilder b)]) = _$Asset;

  String toJson() {
    return json.encode(serializers.serializeWith(Asset.serializer, this));
  }

  static Asset fromJson(String jsonString) {
    return serializers.deserializeWith(
        Asset.serializer, json.decode(jsonString));
  }

  static Serializer<Asset> get serializer => _$assetSerializer;
}
