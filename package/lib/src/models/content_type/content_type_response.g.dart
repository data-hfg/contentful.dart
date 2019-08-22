// GENERATED CODE - DO NOT MODIFY BY HAND

part of content_type_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContentTypeResponse> _$contentTypeResponseSerializer =
    new _$ContentTypeResponseSerializer();

class _$ContentTypeResponseSerializer
    implements StructuredSerializer<ContentTypeResponse> {
  @override
  final Iterable<Type> types = const [
    ContentTypeResponse,
    _$ContentTypeResponse
  ];
  @override
  final String wireName = 'ContentTypeResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ContentTypeResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ContentType)])),
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
  ContentTypeResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContentTypeResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ContentType)]))
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

class _$ContentTypeResponse extends ContentTypeResponse {
  @override
  final BuiltList<ContentType> items;
  @override
  final int limit;
  @override
  final int skip;
  @override
  final SystemFields sys;
  @override
  final int total;

  factory _$ContentTypeResponse(
          [void Function(ContentTypeResponseBuilder) updates]) =>
      (new ContentTypeResponseBuilder()..update(updates)).build();

  _$ContentTypeResponse._(
      {this.items, this.limit, this.skip, this.sys, this.total})
      : super._() {
    if (items == null) {
      throw new BuiltValueNullFieldError('ContentTypeResponse', 'items');
    }
    if (limit == null) {
      throw new BuiltValueNullFieldError('ContentTypeResponse', 'limit');
    }
    if (skip == null) {
      throw new BuiltValueNullFieldError('ContentTypeResponse', 'skip');
    }
    if (sys == null) {
      throw new BuiltValueNullFieldError('ContentTypeResponse', 'sys');
    }
    if (total == null) {
      throw new BuiltValueNullFieldError('ContentTypeResponse', 'total');
    }
  }

  @override
  ContentTypeResponse rebuild(
          void Function(ContentTypeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentTypeResponseBuilder toBuilder() =>
      new ContentTypeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContentTypeResponse &&
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
    return (newBuiltValueToStringHelper('ContentTypeResponse')
          ..add('items', items)
          ..add('limit', limit)
          ..add('skip', skip)
          ..add('sys', sys)
          ..add('total', total))
        .toString();
  }
}

class ContentTypeResponseBuilder
    implements Builder<ContentTypeResponse, ContentTypeResponseBuilder> {
  _$ContentTypeResponse _$v;

  ListBuilder<ContentType> _items;
  ListBuilder<ContentType> get items =>
      _$this._items ??= new ListBuilder<ContentType>();
  set items(ListBuilder<ContentType> items) => _$this._items = items;

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

  ContentTypeResponseBuilder();

  ContentTypeResponseBuilder get _$this {
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
  void replace(ContentTypeResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContentTypeResponse;
  }

  @override
  void update(void Function(ContentTypeResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContentTypeResponse build() {
    _$ContentTypeResponse _$result;
    try {
      _$result = _$v ??
          new _$ContentTypeResponse._(
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
            'ContentTypeResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
