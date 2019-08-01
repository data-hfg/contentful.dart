// GENERATED CODE - DO NOT MODIFY BY HAND

part of all_locales;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AllLocales> _$allLocalesSerializer = new _$AllLocalesSerializer();

class _$AllLocalesSerializer implements StructuredSerializer<AllLocales> {
  @override
  final Iterable<Type> types = const [AllLocales, _$AllLocales];
  @override
  final String wireName = 'AllLocales';

  @override
  Iterable<Object> serialize(Serializers serializers, AllLocales object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sys',
      serializers.serialize(object.sys, specifiedType: const FullType(Sys)),
      'total',
      serializers.serialize(object.total, specifiedType: const FullType(int)),
      'skip',
      serializers.serialize(object.skip, specifiedType: const FullType(int)),
      'limit',
      serializers.serialize(object.limit, specifiedType: const FullType(int)),
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Locale)])),
    ];

    return result;
  }

  @override
  AllLocales deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AllLocalesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sys':
          result.sys.replace(serializers.deserialize(value,
              specifiedType: const FullType(Sys)) as Sys);
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'skip':
          result.skip = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Locale)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$AllLocales extends AllLocales {
  @override
  final Sys sys;
  @override
  final int total;
  @override
  final int skip;
  @override
  final int limit;
  @override
  final BuiltList<Locale> items;

  factory _$AllLocales([void Function(AllLocalesBuilder) updates]) =>
      (new AllLocalesBuilder()..update(updates)).build();

  _$AllLocales._({this.sys, this.total, this.skip, this.limit, this.items})
      : super._() {
    if (sys == null) {
      throw new BuiltValueNullFieldError('AllLocales', 'sys');
    }
    if (total == null) {
      throw new BuiltValueNullFieldError('AllLocales', 'total');
    }
    if (skip == null) {
      throw new BuiltValueNullFieldError('AllLocales', 'skip');
    }
    if (limit == null) {
      throw new BuiltValueNullFieldError('AllLocales', 'limit');
    }
    if (items == null) {
      throw new BuiltValueNullFieldError('AllLocales', 'items');
    }
  }

  @override
  AllLocales rebuild(void Function(AllLocalesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllLocalesBuilder toBuilder() => new AllLocalesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllLocales &&
        sys == other.sys &&
        total == other.total &&
        skip == other.skip &&
        limit == other.limit &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, sys.hashCode), total.hashCode), skip.hashCode),
            limit.hashCode),
        items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AllLocales')
          ..add('sys', sys)
          ..add('total', total)
          ..add('skip', skip)
          ..add('limit', limit)
          ..add('items', items))
        .toString();
  }
}

class AllLocalesBuilder implements Builder<AllLocales, AllLocalesBuilder> {
  _$AllLocales _$v;

  SysBuilder _sys;
  SysBuilder get sys => _$this._sys ??= new SysBuilder();
  set sys(SysBuilder sys) => _$this._sys = sys;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  int _skip;
  int get skip => _$this._skip;
  set skip(int skip) => _$this._skip = skip;

  int _limit;
  int get limit => _$this._limit;
  set limit(int limit) => _$this._limit = limit;

  ListBuilder<Locale> _items;
  ListBuilder<Locale> get items => _$this._items ??= new ListBuilder<Locale>();
  set items(ListBuilder<Locale> items) => _$this._items = items;

  AllLocalesBuilder();

  AllLocalesBuilder get _$this {
    if (_$v != null) {
      _sys = _$v.sys?.toBuilder();
      _total = _$v.total;
      _skip = _$v.skip;
      _limit = _$v.limit;
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllLocales other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AllLocales;
  }

  @override
  void update(void Function(AllLocalesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AllLocales build() {
    _$AllLocales _$result;
    try {
      _$result = _$v ??
          new _$AllLocales._(
              sys: sys.build(),
              total: total,
              skip: skip,
              limit: limit,
              items: items.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sys';
        sys.build();

        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AllLocales', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
