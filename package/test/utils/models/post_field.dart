library post_field;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import './serializers.dart';
import 'post.dart';

part 'post_field.g.dart';

abstract class PostField implements Built<PostField, PostFieldBuilder> {
  String get title;
  String get slug;
  BuiltList<Post> get relatedPosts;

  PostField._();

  factory PostField([updates(PostFieldBuilder b)]) = _$PostField;

  String toJson() {
    return json.encode(serializers.serializeWith(PostField.serializer, this));
  }

  static PostField fromJson(String jsonString) {
    return serializers.deserializeWith(
        PostField.serializer, json.decode(jsonString));
  }

  static Serializer<PostField> get serializer => _$postFieldSerializer;
}
