library common_resource;

import 'dart:convert';

import 'package:Contentfuly/models/models.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'common_resource.g.dart';

abstract class CommonResource
    implements Built<CommonResource, CommonResourceBuilder> {
  //@BuiltValueField(wireName: 'sys.type')
  String get type;
  String get id;
  String get space;
  String get contentType;
  String get type;

  CommonResource._();

  factory CommonResource([updates(CommonResourceBuilder b)]) = _$CommonResource;

  String toJson() {
    return json
        .encode(serializers.serializeWith(CommonResource.serializer, this));
  }

  static CommonResource fromJson(String jsonString) {
    return serializers.deserializeWith(
        CommonResource.serializer, json.decode(jsonString));
  }

  static Serializer<CommonResource> get serializer =>
      _$commonResourceSerializer;
}
