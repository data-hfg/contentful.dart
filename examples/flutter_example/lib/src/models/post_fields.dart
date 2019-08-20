library post_fields;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_example/src/models/serializers.dart';

part 'post_fields.g.dart';

abstract class PostFields implements Built<PostFields, PostFieldsBuilder> {
  String get title;
  String get slug;
  String get description;
  String get body;
  String get publishDate;
  BuiltList<String> get tags;

  PostFields._();

  factory PostFields([updates(PostFieldsBuilder b)]) = _$PostFields;

  String toJson() {
    return json.encode(serializers.serializeWith(PostFields.serializer, this));
  }

  static PostFields fromJson(String jsonString) {
    return serializers.deserializeWith(
        PostFields.serializer, json.decode(jsonString));
  }

  static Serializer<PostFields> get serializer => _$postFieldsSerializer;
}
