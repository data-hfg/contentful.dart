library all_locales;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

part 'all_locales.g.dart';

abstract class AllLocales implements Built<AllLocales, AllLocalesBuilder> {
  static Serializer<AllLocales> get serializer => _$allLocalesSerializer;

  factory AllLocales([void Function(AllLocalesBuilder) updates]) = _$AllLocales;

  AllLocales._();

  BuiltList<Locale> get items;

  int get limit;

  int get skip;

  SystemFields get sys;

  int get total;

  String toJson() {
    return json.encode(
        contentfulSerializers.serializeWith(AllLocales.serializer, this));
  }

  static AllLocales fromJson(String jsonString) {
    return contentfulSerializers.deserializeWith(
        AllLocales.serializer, json.decode(jsonString));
  }
}
