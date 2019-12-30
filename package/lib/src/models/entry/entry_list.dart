// library entry_list;

// import 'dart:convert';

// import 'package:built_collection/built_collection.dart';
// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
// import 'package:contentful_dart/src/models/models.dart';

// part 'entry_list.g.dart';

// abstract class EntryList<T extends Entry>
//     implements Built<EntryList<T>, EntryListBuilder<T>> {
//   static Serializer<EntryList> get serializer => _$entryListSerializer;

//   factory EntryList([void Function(EntryListBuilder<T>) updates]) =
//       _$EntryList<T>;

//   EntryList._();

//   BuiltList<T> get items;

//   int get limit;

//   int get skip;

// factory EntryList([void Function(EntryListBuilder<T>) updates]) =
//     _$EntryList<T>;

//   int get total;

//   String toJson() {
//     return json.encode(
//         contentfulSerializers.serializeWith(EntryList.serializer, this));
//   }

//   static EntryList fromJson(String jsonString) {
//     return contentfulSerializers.deserializeWith(
//         EntryList.serializer, json.decode(jsonString));
//   }
// }

import 'package:built_collection/built_collection.dart';
import 'package:contentful_dart/src/models/models.dart';

abstract class EntryList<T> {
  BuiltList<T> get items;

  int get limit;

  int get skip;

  SystemFields get sys;

  int get total;

  BuiltListMultimap get includes;
}
