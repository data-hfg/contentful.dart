library entry_list;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:contentful.dart/src/models/entry/entry.dart';
import 'package:contentful.dart/src/models/models.dart';

part 'entry_list.g.dart';

abstract class EntryList<T extends Entry>
    implements Built<EntryList<T>, EntryListBuilder<T>> {
  int get total;
  int get skip;
  int get limit;
  BuiltList<T> get items;

  EntryList._();

  factory EntryList([updates(EntryListBuilder<T> b)]) = _$EntryList<T>;

  String toJson() {
    return json.encode(serializers.serializeWith(EntryList.serializer, this));
  }

  static EntryList fromJson(String jsonString) {
    return serializers.deserializeWith(
        EntryList.serializer, json.decode(jsonString));
  }

  static Serializer<EntryList> get serializer => _$entryListSerializer;
}
