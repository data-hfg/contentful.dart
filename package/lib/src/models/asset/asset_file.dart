library asset_file;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

part 'asset_file.g.dart';

abstract class AssetFile implements Built<AssetFile, AssetFileBuilder> {
  String get fileName;
  String get contentType;
  String get url;
  AssetFileDetails get details;

  AssetFile._();

  factory AssetFile([updates(AssetFileBuilder b)]) = _$AssetFile;

  String toJson() {
    return json.encode(
        contentfulSerializers.serializeWith(AssetFile.serializer, this));
  }

  static AssetFile fromJson(String jsonString) {
    return contentfulSerializers.deserializeWith(
        AssetFile.serializer, json.decode(jsonString));
  }

  static Serializer<AssetFile> get serializer => _$assetFileSerializer;
}
