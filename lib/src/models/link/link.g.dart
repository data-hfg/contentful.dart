// GENERATED CODE - DO NOT MODIFY BY HAND

part of link;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Link> _$linkSerializer = new _$LinkSerializer();

class _$LinkSerializer implements StructuredSerializer<Link> {
  @override
  final Iterable<Type> types = const [Link, _$Link];
  @override
  final String wireName = 'Link';

  @override
  Iterable<Object> serialize(Serializers serializers, Link object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  Link deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new LinkBuilder().build();
  }
}

class _$Link extends Link {
  factory _$Link([void Function(LinkBuilder) updates]) =>
      (new LinkBuilder()..update(updates)).build();

  _$Link._() : super._();

  @override
  Link rebuild(void Function(LinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LinkBuilder toBuilder() => new LinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Link;
  }

  @override
  int get hashCode {
    return 836709295;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Link').toString();
  }
}

class LinkBuilder implements Builder<Link, LinkBuilder> {
  _$Link _$v;

  LinkBuilder();

  @override
  void replace(Link other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Link;
  }

  @override
  void update(void Function(LinkBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Link build() {
    final _$result = _$v ?? new _$Link._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
