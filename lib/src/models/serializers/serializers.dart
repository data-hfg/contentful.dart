library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:contentful.dart/src/models/models.dart';

part 'serializers.g.dart';

@SerializersFor([
  AllLocales,
  CommonResource,
  ContentType,
  Endpoint,
  EntryList,
  Field,
  FieldType,
  Link,
  Locale,
  Location,
  SystemFields,
  AssetFileDetailsImage,
  AssetFileDetails,
  AssetFile,
  AssetFields,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

T deserialize<T>(dynamic value) =>
    serializers.deserializeWith<T>(serializers.serializerForType(T), value);

BuiltList<T> deserializeListOf<T>(dynamic items) => BuiltList.from(
    items.map((item) => deserialize<T>(item)).toList(growable: false));
