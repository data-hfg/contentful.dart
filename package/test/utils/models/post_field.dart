library post_field;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

import './serializers.dart';

part 'post_field.g.dart';

abstract class PostField implements Built<PostField, PostFieldBuilder> {
  static Serializer<PostField> get serializer => _$postFieldSerializer;

  factory PostField([updates(PostFieldBuilder b)]) = _$PostField;

  PostField._();

  SystemFields get author;

  String get body;

  String get description;

  SystemFields get heroImage;

  String get publishDate;

  String get slug;

  BuiltList<String> get tags;

  String get title;

  String toJson() {
    return json.encode(serializers.serializeWith(PostField.serializer, this));
  }

  static PostField fromJson(String jsonString) {
    return serializers.deserializeWith(
        PostField.serializer, json.decode(jsonString));
  }
}
