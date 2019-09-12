library post;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

import 'post_field.dart';
import 'test_serializers.dart';

part 'post.g.dart';

abstract class Post extends Object
    with Entry
    implements Built<Post, PostBuilder> {
  static Serializer<Post> get serializer => _$postSerializer;

  factory Post([updates(PostBuilder b)]) = _$Post;

  Post._();

  GenericValue<PostField> get fields;

  SystemFields get sys;

  String toJson() {
    return json.encode(testSerializers.serializeWith(Post.serializer, this));
  }

  static Post fromJson(String jsonString) {
    return testSerializers.deserializeWith(
        Post.serializer, json.decode(jsonString));
  }
}
