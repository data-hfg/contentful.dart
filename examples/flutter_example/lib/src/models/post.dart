library post;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post.g.dart';

abstract class Post implements Built<Post, PostBuilder> {
  // fields go here

  Post._();

  factory Post([updates(PostBuilder b)]) = _$Post;

  String toJson() {
    return json.encode(serializers.serializeWith(Post.serializer, this));
  }

  static Post fromJson(String jsonString) {
    return serializers.deserializeWith(
        Post.serializer, json.decode(jsonString));
  }

  static Serializer<Post> get serializer => _$PostSerializer;
}
