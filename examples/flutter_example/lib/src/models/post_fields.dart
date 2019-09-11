library post_fields;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/contentful_dart.dart';
import 'package:flutter_example/src/models/serializers.dart';

part 'post_fields.g.dart';

abstract class PostFields implements Built<PostFields, PostFieldsBuilder> {
  static Serializer<PostFields> get serializer => _$postFieldsSerializer;

  factory PostFields([updates(PostFieldsBuilder b)]) = _$PostFields;

  PostFields._();

  // SystemFields get author;

  String get body;

  String get description;

  // Asset get heroImage;

  String get publishDate;

  String get slug;

  List<String> get tags;

  String get title;

  String toJson() {
    return json.encode(serializers.serializeWith(PostFields.serializer, this));
  }

  static PostFields fromJson(String jsonString) {
    print('DEBUG: $jsonString');
    return serializers.deserializeWith(
        PostFields.serializer, json.decode(jsonString));
  }
}
