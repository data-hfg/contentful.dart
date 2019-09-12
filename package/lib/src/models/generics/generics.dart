library generics;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'generics.g.dart';

/// The value class must implement [Built]. It must be abstract, and have
/// fields declared as abstract getters. Finally, it must have a particular
/// constructor and factory, as shown here.
abstract class GenericValue<T>
    implements Built<GenericValue<T>, GenericValueBuilder<T>> {
  /// Example of how to make a built_value type serializable.
  ///
  /// Declare a static final [Serializer] field called `serializer`.
  /// The built_value code generator will provide the implementation. You need
  /// to do this for every type you want to serialize.
  static Serializer<GenericValue> get serializer => _$genericValueSerializer;

  factory GenericValue([updates(GenericValueBuilder<T> b)]) = _$GenericValue<T>;

  GenericValue._();
  T get value;
}
