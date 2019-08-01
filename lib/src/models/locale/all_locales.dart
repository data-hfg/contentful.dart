library all_locales;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful.dart/src/models/models.dart';

part 'all_locales.g.dart';

abstract class AllLocales implements Built<AllLocales, AllLocalesBuilder> {
  Sys get sys;

  int get total;

  int get skip;

  int get limit;

  BuiltList<Locale> get items;

  AllLocales._();

  factory AllLocales([updates(AllLocalesBuilder b)]) = _$AllLocales;

  String toJson() {
    return json.encode(serializers.serializeWith(AllLocales.serializer, this));
  }

  static AllLocales fromJson(String jsonString) {
    return serializers.deserializeWith(
        AllLocales.serializer, json.decode(jsonString));
  }

  static Serializer<AllLocales> get serializer => _$allLocalesSerializer;
}
