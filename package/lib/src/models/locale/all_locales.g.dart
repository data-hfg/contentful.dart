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
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Locale)])),
      'limit',
      serializers.serialize(object.limit, specifiedType: const FullType(int)),
      'skip',
      serializers.serialize(object.skip, specifiedType: const FullType(int)),
      'sys',
      serializers.serialize(object.sys,
          specifiedType: const FullType(SystemFields)),
      'total',
      serializers.serialize(object.total, specifiedType: const FullType(int)),
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
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Locale)]))
              as BuiltList<dynamic>);
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'skip':
          result.skip = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sys':
          result.sys.replace(serializers.deserialize(value,
              specifiedType: const FullType(SystemFields)) as SystemFields);
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$AllLocales extends AllLocales {
  @override
  final BuiltList<Locale> items;
  @override
  final int limit;
  @override
  final int skip;
  @override
  final SystemFields sys;
  @override
  final int total;

  factory _$AllLocales([void Function(AllLocalesBuilder) updates]) =>
      (new AllLocalesBuilder()..update(updates)).build();

  _$AllLocales._({this.items, this.limit, this.skip, this.sys, this.total})
      : super._() {
    if (items == null) {
      throw new BuiltValueNullFieldError('AllLocales', 'items');
    }
    if (limit == null) {
      throw new BuiltValueNullFieldError('AllLocales', 'limit');
    }
    if (skip == null) {
      throw new BuiltValueNullFieldError('AllLocales', 'skip');
    }
    if (sys == null) {
      throw new BuiltValueNullFieldError('AllLocales', 'sys');
    }
    if (total == null) {
      throw new BuiltValueNullFieldError('AllLocales', 'total');
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
        items == other.items &&
        limit == other.limit &&
        skip == other.skip &&
        sys == other.sys &&
        total == other.total;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, items.hashCode), limit.hashCode), skip.hashCode),
            sys.hashCode),
        total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AllLocales')
          ..add('items', items)
          ..add('limit', limit)
          ..add('skip', skip)
          ..add('sys', sys)
          ..add('total', total))
        .toString();
  }
}

class AllLocalesBuilder implements Builder<AllLocales, AllLocalesBuilder> {
  _$AllLocales _$v;

  ListBuilder<Locale> _items;
  ListBuilder<Locale> get items => _$this._items ??= new ListBuilder<Locale>();
  set items(ListBuilder<Locale> items) => _$this._items = items;

  int _limit;
  int get limit => _$this._limit;
  set limit(int limit) => _$this._limit = limit;

  int _skip;
  int get skip => _$this._skip;
  set skip(int skip) => _$this._skip = skip;

  SystemFieldsBuilder _sys;
  SystemFieldsBuilder get sys => _$this._sys ??= new SystemFieldsBuilder();
  set sys(SystemFieldsBuilder sys) => _$this._sys = sys;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  AllLocalesBuilder();

  AllLocalesBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items?.toBuilder();
      _limit = _$v.limit;
      _skip = _$v.skip;
      _sys = _$v.sys?.toBuilder();
      _total = _$v.total;
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
              items: items.build(),
              limit: limit,
              skip: skip,
              sys: sys.build(),
              total: total);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();

        _$failedField = 'sys';
        sys.build();
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
