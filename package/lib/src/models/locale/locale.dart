library locale;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

part 'locale.g.dart';

abstract class Locale implements Built<Locale, LocaleBuilder> {
  static Serializer<Locale> get serializer => _$localeSerializer;

  factory Locale([void Function(LocaleBuilder) updates]) = _$Locale;

  Locale._();

  String get code;

  @nullable
  String get fallbackCode;

  @BuiltValueField(wireName: 'default')
  bool get isDefault;

  String get name;

  @nullable
  SystemFields get sys;

  String toJson() {
    return json
        .encode(contentfulSerializers.serializeWith(Locale.serializer, this));
  }

  static Locale fromJson(String jsonString) {
    return contentfulSerializers.deserializeWith(
        Locale.serializer, json.decode(jsonString));
  }
}
