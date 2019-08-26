library content_type_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

part 'content_type_response.g.dart';

abstract class ContentTypeResponse
    implements Built<ContentTypeResponse, ContentTypeResponseBuilder> {
  static Serializer<ContentTypeResponse> get serializer =>
      _$contentTypeResponseSerializer;

  factory ContentTypeResponse(
          [void Function(ContentTypeResponseBuilder) updates]) =
      _$ContentTypeResponse;

  ContentTypeResponse._();

  BuiltList<ContentType> get items;

  int get limit;

  int get skip;

  SystemFields get sys;

  int get total;

  String toJson() {
    return json.encode(contentfulSerializers.serializeWith(
        ContentTypeResponse.serializer, this));
  }

  static ContentTypeResponse fromJson(String jsonString) {
    return contentfulSerializers.deserializeWith(
        ContentTypeResponse.serializer, json.decode(jsonString));
  }
}
