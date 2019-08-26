library post;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/entry/entry.dart';
import 'package:contentful_dart/src/models/system_fields/system_fields.dart';

import './serializers.dart';
import 'post_field.dart';

part 'post.g.dart';

abstract class Post extends Object
    with Entry<PostField>
    implements Built<Post, PostBuilder> {
  static Serializer<Post> get serializer => _$postSerializer;

  factory Post([void Function(PostBuilder) updates]) = _$Post;

  Post._();

  PostField get fields;

  SystemFields get sys;

  String toJson() {
    return json.encode(serializers.serializeWith(Post.serializer, this));
  }

  static Post fromJson(String jsonString) {
    return serializers.deserializeWith(
        Post.serializer, json.decode(jsonString));
  }
}
