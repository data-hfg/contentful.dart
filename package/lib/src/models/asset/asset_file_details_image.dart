library asset_file_details_image;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

part 'asset_file_details_image.g.dart';

abstract class AssetFileDetailsImage
    implements Built<AssetFileDetailsImage, AssetFileDetailsImageBuilder> {
  int get height;
  int get width;

  AssetFileDetailsImage._();

  factory AssetFileDetailsImage([updates(AssetFileDetailsImageBuilder b)]) =
      _$AssetFileDetailsImage;

  String toJson() {
    return json.encode(contentfulSerializers.serializeWith(
        AssetFileDetailsImage.serializer, this));
  }

  static AssetFileDetailsImage fromJson(String jsonString) {
    return contentfulSerializers.deserializeWith(
        AssetFileDetailsImage.serializer, json.decode(jsonString));
  }

  static Serializer<AssetFileDetailsImage> get serializer =>
      _$assetFileDetailsImageSerializer;
}
