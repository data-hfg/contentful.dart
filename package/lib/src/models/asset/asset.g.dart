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
      'fields',
      serializers.serialize(object.fields,
          specifiedType: const FullType(AssetFields)),
      'sys',
      serializers.serialize(object.sys,
          specifiedType: const FullType(SystemFields)),
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
        case 'fields':
          result.fields.replace(serializers.deserialize(value,
              specifiedType: const FullType(AssetFields)) as AssetFields);
          break;
        case 'sys':
          result.sys.replace(serializers.deserialize(value,
              specifiedType: const FullType(SystemFields)) as SystemFields);
          break;
      }
    }

    return result.build();
  }
}

class _$Asset extends Asset {
  @override
  final AssetFields fields;
  @override
  final SystemFields sys;

  factory _$Asset([void Function(AssetBuilder) updates]) =>
      (new AssetBuilder()..update(updates)).build();

  _$Asset._({this.fields, this.sys}) : super._() {
    if (fields == null) {
      throw new BuiltValueNullFieldError('Asset', 'fields');
    }
    if (sys == null) {
      throw new BuiltValueNullFieldError('Asset', 'sys');
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
    return other is Asset && fields == other.fields && sys == other.sys;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, fields.hashCode), sys.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Asset')
          ..add('fields', fields)
          ..add('sys', sys))
        .toString();
  }
}

class AssetBuilder implements Builder<Asset, AssetBuilder> {
  _$Asset _$v;

  AssetFieldsBuilder _fields;
  AssetFieldsBuilder get fields => _$this._fields ??= new AssetFieldsBuilder();
  set fields(AssetFieldsBuilder fields) => _$this._fields = fields;

  SystemFieldsBuilder _sys;
  SystemFieldsBuilder get sys => _$this._sys ??= new SystemFieldsBuilder();
  set sys(SystemFieldsBuilder sys) => _$this._sys = sys;

  AssetBuilder();

  AssetBuilder get _$this {
    if (_$v != null) {
      _fields = _$v.fields?.toBuilder();
      _sys = _$v.sys?.toBuilder();
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
      _$result = _$v ?? new _$Asset._(fields: fields.build(), sys: sys.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'fields';
        fields.build();
        _$failedField = 'sys';
        sys.build();
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
