library test_serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:contentful_dart/contentful_dart.dart';

import 'post.dart';
import 'post_field.dart';

part 'test_serializers.g.dart';

@SerializersFor([
  PostField,
  Post,
])
final Serializers testSerializers =
    (_$testSerializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

T deserialize<T>(dynamic value) => testSerializers.deserializeWith<T>(
    testSerializers.serializerForType(T), value);

BuiltList<T> deserializeListOf<T>(dynamic items) => BuiltList.from(
    items.map((item) => deserialize<T>(item)).toList(growable: false));
