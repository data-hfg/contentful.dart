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
    final result = <Object>[
      'sys',
      serializers.serialize(object.sys,
          specifiedType: const FullType(SystemFields)),
    ];
    if (object.asset != null) {
      result
        ..add('asset')
        ..add(serializers.serialize(object.asset,
            specifiedType: const FullType(Asset)));
    }
    if (object.entry != null) {
      result
        ..add('entry')
        ..add(serializers.serialize(object.entry,
            specifiedType: const FullType(Entry)));
    }
    return result;
  }

  @override
  Link deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LinkBuilder();

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
        case 'asset':
          result.asset.replace(serializers.deserialize(value,
              specifiedType: const FullType(Asset)) as Asset);
          break;
        case 'entry':
          result.entry = serializers.deserialize(value,
              specifiedType: const FullType(Entry)) as Entry;
          break;
      }
    }

    return result.build();
  }
}

class _$Link extends Link {
  @override
  final SystemFields sys;
  @override
  final Asset asset;
  @override
  final Entry entry;

  factory _$Link([void Function(LinkBuilder) updates]) =>
      (new LinkBuilder()..update(updates)).build();

  _$Link._({this.sys, this.asset, this.entry}) : super._() {
    if (sys == null) {
      throw new BuiltValueNullFieldError('Link', 'sys');
    }
  }

  @override
  Link rebuild(void Function(LinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LinkBuilder toBuilder() => new LinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Link &&
        sys == other.sys &&
        asset == other.asset &&
        entry == other.entry;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, sys.hashCode), asset.hashCode), entry.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Link')
          ..add('sys', sys)
          ..add('asset', asset)
          ..add('entry', entry))
        .toString();
  }
}

class LinkBuilder implements Builder<Link, LinkBuilder> {
  _$Link _$v;

  SystemFieldsBuilder _sys;
  SystemFieldsBuilder get sys => _$this._sys ??= new SystemFieldsBuilder();
  set sys(SystemFieldsBuilder sys) => _$this._sys = sys;

  AssetBuilder _asset;
  AssetBuilder get asset => _$this._asset ??= new AssetBuilder();
  set asset(AssetBuilder asset) => _$this._asset = asset;

  Entry _entry;
  Entry get entry => _$this._entry;
  set entry(Entry entry) => _$this._entry = entry;

  LinkBuilder();

  LinkBuilder get _$this {
    if (_$v != null) {
      _sys = _$v.sys?.toBuilder();
      _asset = _$v.asset?.toBuilder();
      _entry = _$v.entry;
      _$v = null;
    }
    return this;
  }

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
    _$Link _$result;
    try {
      _$result = _$v ??
          new _$Link._(sys: sys.build(), asset: _asset?.build(), entry: entry);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sys';
        sys.build();
        _$failedField = 'asset';
        _asset?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Link', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
