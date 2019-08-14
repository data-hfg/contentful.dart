// GENERATED CODE - DO NOT MODIFY BY HAND

part of entry_list;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EntryList> _$entryListSerializer = new _$EntryListSerializer();

class _$EntryListSerializer implements StructuredSerializer<EntryList> {
  @override
  final Iterable<Type> types = const [EntryList, _$EntryList];
  @override
  final String wireName = 'EntryList';

  @override
  Iterable<Object> serialize(Serializers serializers, EntryList object,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = <Object>[
      'total',
      serializers.serialize(object.total, specifiedType: const FullType(int)),
      'skip',
      serializers.serialize(object.skip, specifiedType: const FullType(int)),
      'limit',
      serializers.serialize(object.limit, specifiedType: const FullType(int)),
      'items',
      serializers.serialize(object.items,
          specifiedType: new FullType(BuiltList, [parameterT])),
    ];

    return result;
  }

  @override
  EntryList deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new EntryListBuilder<Entry<dynamic>>()
        : serializers.newBuilder(specifiedType) as EntryListBuilder;

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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
                  specifiedType: new FullType(BuiltList, [parameterT]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$EntryList<T extends Entry<dynamic>> extends EntryList<T> {
  @override
  final int total;
  @override
  final int skip;
  @override
  final int limit;
  @override
  final BuiltList<T> items;

  factory _$EntryList([void Function(EntryListBuilder<T>) updates]) =>
      (new EntryListBuilder<T>()..update(updates)).build();

  _$EntryList._({this.total, this.skip, this.limit, this.items}) : super._() {
    if (total == null) {
      throw new BuiltValueNullFieldError('EntryList', 'total');
    }
    if (skip == null) {
      throw new BuiltValueNullFieldError('EntryList', 'skip');
    }
    if (limit == null) {
      throw new BuiltValueNullFieldError('EntryList', 'limit');
    }
    if (items == null) {
      throw new BuiltValueNullFieldError('EntryList', 'items');
    }
    if (T == dynamic) {
      throw new BuiltValueMissingGenericsError('EntryList', 'T');
    }
  }

  @override
  EntryList<T> rebuild(void Function(EntryListBuilder<T>) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntryListBuilder<T> toBuilder() => new EntryListBuilder<T>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntryList &&
        total == other.total &&
        skip == other.skip &&
        limit == other.limit &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, total.hashCode), skip.hashCode), limit.hashCode),
        items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EntryList')
          ..add('total', total)
          ..add('skip', skip)
          ..add('limit', limit)
          ..add('items', items))
        .toString();
  }
}

class EntryListBuilder<T extends Entry<dynamic>>
    implements Builder<EntryList<T>, EntryListBuilder<T>> {
  _$EntryList<T> _$v;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  int _skip;
  int get skip => _$this._skip;
  set skip(int skip) => _$this._skip = skip;

  int _limit;
  int get limit => _$this._limit;
  set limit(int limit) => _$this._limit = limit;

  ListBuilder<T> _items;
  ListBuilder<T> get items => _$this._items ??= new ListBuilder<T>();
  set items(ListBuilder<T> items) => _$this._items = items;

  EntryListBuilder();

  EntryListBuilder<T> get _$this {
    if (_$v != null) {
      _total = _$v.total;
      _skip = _$v.skip;
      _limit = _$v.limit;
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntryList<T> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EntryList<T>;
  }

  @override
  void update(void Function(EntryListBuilder<T>) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EntryList<T> build() {
    _$EntryList<T> _$result;
    try {
      _$result = _$v ??
          new _$EntryList<T>._(
              total: total, skip: skip, limit: limit, items: items.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EntryList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
