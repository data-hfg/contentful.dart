library contentful_serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:contentful_dart/src/models/models.dart';
import 'package:contentful_dart/src/models/serializers/contentful_json_plugin.dart';

part 'contentful_serializers.g.dart';

@SerializersFor([
  AllLocales,
  Asset,
  AssetFields,
  AssetFile,
  AssetFileDetails,
  AssetFileDetailsImage,
  ContentType,
  ContentTypeResponse,
  Endpoint,
  EntryList,
  Field,
  FieldType,
  Link,
  Locale,
  Location,
  Space,
  SystemFields,
])
final Serializers contentfulSerializers = (_$contentfulSerializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..addPlugin(ContentfulJsonPlugin()))
    .build();

T deserialize<T>(dynamic value) => contentfulSerializers.deserializeWith<T>(
    contentfulSerializers.serializerForType(T), value);

BuiltList<T> deserializeListOf<T>(dynamic items) => BuiltList.from(
    items.map((item) => deserialize<T>(item)).toList(growable: false));
