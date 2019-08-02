library asset_file_details;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful.dart/src/models/models.dart';

part 'asset_file_details.g.dart';

abstract class AssetFileDetails
    implements Built<AssetFileDetails, AssetFileDetailsBuilder> {
  int get size;
  AssetFileDetailsImage get image;

  AssetFileDetails._();

  factory AssetFileDetails([updates(AssetFileDetailsBuilder b)]) =
      _$AssetFileDetails;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AssetFileDetails.serializer, this));
  }

  static AssetFileDetails fromJson(String jsonString) {
    return serializers.deserializeWith(
        AssetFileDetails.serializer, json.decode(jsonString));
  }

  static Serializer<AssetFileDetails> get serializer =>
      _$assetFileDetailsSerializer;
}
