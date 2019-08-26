library asset_file;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

part 'asset_file.g.dart';

abstract class AssetFile implements Built<AssetFile, AssetFileBuilder> {
  static Serializer<AssetFile> get serializer => _$assetFileSerializer;

  factory AssetFile([void Function(AssetFileBuilder) updates]) = _$AssetFile;

  AssetFile._();

  String get contentType;

  AssetFileDetails get details;

  String get fileName;

  String get url;

  String toJson() {
    return json.encode(
        contentfulSerializers.serializeWith(AssetFile.serializer, this));
  }

  static AssetFile fromJson(String jsonString) {
    return contentfulSerializers.deserializeWith(
        AssetFile.serializer, json.decode(jsonString));
  }
}
