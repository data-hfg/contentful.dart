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
    final result = <Object>[
      'sys',
      serializers.serialize(object.sys,
          specifiedType: const FullType(SystemFields)),
      'fields',
      serializers.serialize(object.fields,
          specifiedType: const FullType(AssetFields)),
    ];

    return result;
  }

  @override
  Asset deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AssetBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sys':
          result.sys.replace(serializers.deserialize(value,
              specifiedType: const FullType(SystemFields)) as SystemFields);
          break;
        case 'fields':
          result.fields.replace(serializers.deserialize(value,
              specifiedType: const FullType(AssetFields)) as AssetFields);
          break;
      }
    }

    return result.build();
  }
}

class _$Asset extends Asset {
  @override
  final SystemFields sys;
  @override
  final AssetFields fields;

  factory _$Asset([void Function(AssetBuilder) updates]) =>
      (new AssetBuilder()..update(updates)).build();

  _$Asset._({this.sys, this.fields}) : super._() {
    if (sys == null) {
      throw new BuiltValueNullFieldError('Asset', 'sys');
    }
    if (fields == null) {
      throw new BuiltValueNullFieldError('Asset', 'fields');
    }
  }

  @override
  Asset rebuild(void Function(AssetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetBuilder toBuilder() => new AssetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Asset && sys == other.sys && fields == other.fields;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, sys.hashCode), fields.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Asset')
          ..add('sys', sys)
          ..add('fields', fields))
        .toString();
  }
}

class AssetBuilder implements Builder<Asset, AssetBuilder> {
  _$Asset _$v;

  SystemFieldsBuilder _sys;
  SystemFieldsBuilder get sys => _$this._sys ??= new SystemFieldsBuilder();
  set sys(SystemFieldsBuilder sys) => _$this._sys = sys;

  AssetFieldsBuilder _fields;
  AssetFieldsBuilder get fields => _$this._fields ??= new AssetFieldsBuilder();
  set fields(AssetFieldsBuilder fields) => _$this._fields = fields;

  AssetBuilder();

  AssetBuilder get _$this {
    if (_$v != null) {
      _sys = _$v.sys?.toBuilder();
      _fields = _$v.fields?.toBuilder();
      _$v = null;
    }
    return this;
  }

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
    _$Asset _$result;
    try {
      _$result = _$v ?? new _$Asset._(sys: sys.build(), fields: fields.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sys';
        sys.build();
        _$failedField = 'fields';
        fields.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Asset', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
