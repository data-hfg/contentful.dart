library post_list;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/system_fields/system_fields.dart';

import 'post.dart';
import 'test_serializers.dart';

part 'post_list.g.dart';

abstract class PostList implements Built<PostList, PostListBuilder> {
  static Serializer<PostList> get serializer => _$postListSerializer;

  factory PostList([void Function(PostListBuilder) updates]) = _$PostList;

  PostList._();

  BuiltListMultimap get includes;

  BuiltList<Post> get items;

  int get limit;

  int get skip;

  SystemFields get sys;

  int get total;

  String toJson() {
    return json
        .encode(testSerializers.serializeWith(PostList.serializer, this));
  }

  static PostList fromJson(String jsonString) {
    return testSerializers.deserializeWith(
        PostList.serializer, json.decode(jsonString));
  }
}
