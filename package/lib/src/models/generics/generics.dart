library generics;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'generics.g.dart';

abstract class BoundGenericValue<T extends num>
    implements Built<BoundGenericValue<T>, BoundGenericValueBuilder<T>> {
  static Serializer<BoundGenericValue> get serializer =>
      _$boundGenericValueSerializer;

  factory BoundGenericValue(
          [void Function(BoundGenericValueBuilder<T>) updates]) =
      _$BoundGenericValue<T>;

  BoundGenericValue._();

  T get value;
}

abstract class CollectionGenericValue<T>
    implements
        Built<CollectionGenericValue<T>, CollectionGenericValueBuilder<T>> {
  static Serializer<CollectionGenericValue> get serializer =>
      _$collectionGenericValueSerializer;

  factory CollectionGenericValue(
          [void Function(CollectionGenericValueBuilder<T>) updates]) =
      _$CollectionGenericValue<T>;

  CollectionGenericValue._();

  BuiltList<T> get values;
}

abstract class GenericValue<T>
    implements Built<GenericValue<T>, GenericValueBuilder<T>> {
  static Serializer<GenericValue> get serializer => _$genericValueSerializer;

  factory GenericValue([void Function(GenericValueBuilder<T>) updates]) =
      _$GenericValue<T>;

  GenericValue._();

  T get value;
}

/// Example of how to use built_value.
///
/// The value class must implement [Built]. It must be abstract, and have
/// fields declared as abstract getters. Finally, it must have a particular
/// constructor and factory, as shown here
abstract class GenericContainer
    implements Built<GenericContainer, GenericContainerBuilder> {
  static Serializer<GenericContainer> get serializer =>
      _$genericContainerSerializer;

  factory GenericContainer([void Function(GenericContainerBuilder) updates]) =
      _$GenericContainer;

  GenericContainer._();

  BoundGenericValue<double> get boundGenericValue;

  CollectionGenericValue<String> get collectionGenericValue;

  GenericValue<String> get genericValue;
}
