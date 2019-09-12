// GENERATED CODE - DO NOT MODIFY BY HAND

part of test_serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$testSerializers = (new Serializers().toBuilder()
      ..add(GenericValue.serializer)
      ..add(Locale.serializer)
      ..add(Post.serializer)
      ..add(PostField.serializer)
      ..add(Space.serializer)
      ..add(SystemFields.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Locale)]),
          () => new ListBuilder<Locale>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(GenericValue, const [const FullType(PostField)]),
          () => new GenericValueBuilder<PostField>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
