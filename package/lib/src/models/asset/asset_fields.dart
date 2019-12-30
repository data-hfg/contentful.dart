library asset_fields;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

part 'asset_fields.g.dart';

abstract class AssetFields implements Built<AssetFields, AssetFieldsBuilder> {
  static Serializer<AssetFields> get serializer => _$assetFieldsSerializer;
  factory AssetFields([void Function(AssetFieldsBuilder) updates]) =
      _$AssetFields;

  AssetFields._();

  AssetFile get file;

  String get title;

  String toJson() {
    return json.encode(
        contentfulSerializers.serializeWith(AssetFields.serializer, this));
  }

  static AssetFields fromJson(String jsonString) {
    return contentfulSerializers.deserializeWith(
        AssetFields.serializer, json.decode(jsonString));
  }
}
