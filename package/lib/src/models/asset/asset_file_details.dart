library asset_file_details;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

part 'asset_file_details.g.dart';

abstract class AssetFileDetails
    implements Built<AssetFileDetails, AssetFileDetailsBuilder> {
  static Serializer<AssetFileDetails> get serializer =>
      _$assetFileDetailsSerializer;

  factory AssetFileDetails([void Function(AssetFileDetailsBuilder) updates]) =
      _$AssetFileDetails;

  AssetFileDetails._();

  AssetFileDetailsImage get image;

  int get size;

  String toJson() {
    return json.encode(
        contentfulSerializers.serializeWith(AssetFileDetails.serializer, this));
  }

  static AssetFileDetails fromJson(String jsonString) {
    return contentfulSerializers.deserializeWith(
        AssetFileDetails.serializer, json.decode(jsonString));
  }
}
