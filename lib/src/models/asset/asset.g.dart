// GENERATED CODE - DO NOT MODIFY BY HAND

part of asset;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Asset> _$assetSerializer = new _$AssetSerializer();

class _$AssetSerializer implements StructuredSerializer<Asset> {
  @override
  final Iterable<Type> types = const [Asset, _$Asset];
  @override
  final String wireName = 'Asset';

  @override
  Iterable<Object> serialize(Serializers serializers, Asset object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  Asset deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new AssetBuilder().build();
  }
}

class _$Asset extends Asset {
  factory _$Asset([void Function(AssetBuilder) updates]) =>
      (new AssetBuilder()..update(updates)).build();

  _$Asset._() : super._();

  @override
  Asset rebuild(void Function(AssetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetBuilder toBuilder() => new AssetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Asset;
  }

  @override
  int get hashCode {
    return 667655707;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Asset').toString();
  }
}

class AssetBuilder implements Builder<Asset, AssetBuilder> {
  _$Asset _$v;

  AssetBuilder();

  @override
  void replace(Asset other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Asset;
  }

  @override
  void update(void Function(AssetBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Asset build() {
    final _$result = _$v ?? new _$Asset._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
