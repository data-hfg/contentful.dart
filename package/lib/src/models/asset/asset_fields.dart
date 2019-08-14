library asset_fields;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

part 'asset_fields.g.dart';

abstract class AssetFields implements Built<AssetFields, AssetFieldsBuilder> {
  String get title;
  AssetFile get file;

  AssetFields._();

  factory AssetFields([updates(AssetFieldsBuilder b)]) = _$AssetFields;

  String toJson() {
    return json.encode(serializers.serializeWith(AssetFields.serializer, this));
  }

  static AssetFields fromJson(String jsonString) {
    return serializers.deserializeWith(
        AssetFields.serializer, json.decode(jsonString));
  }

  static Serializer<AssetFields> get serializer => _$assetFieldsSerializer;
}
