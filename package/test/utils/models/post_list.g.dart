// GENERATED CODE - DO NOT MODIFY BY HAND

part of post_list;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostList> _$postListSerializer = new _$PostListSerializer();

class _$PostListSerializer implements StructuredSerializer<PostList> {
  @override
  final Iterable<Type> types = const [PostList, _$PostList];
  @override
  final String wireName = 'PostList';

  @override
  Iterable<Object> serialize(Serializers serializers, PostList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'includes',
      serializers.serialize(object.includes,
          specifiedType: const FullType(BuiltListMultimap)),
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Post)])),
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
  PostList deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'includes':
          result.includes = serializers.deserialize(value,
                  specifiedType: const FullType(BuiltListMultimap))
              as BuiltListMultimap<dynamic, dynamic>;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Post)]))
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

class _$PostList extends PostList {
  @override
  final BuiltListMultimap includes;
  @override
  final BuiltList<Post> items;
  @override
  final int limit;
  @override
  final int skip;
  @override
  final SystemFields sys;
  @override
  final int total;

  factory _$PostList([void Function(PostListBuilder) updates]) =>
      (new PostListBuilder()..update(updates)).build();

  _$PostList._(
      {this.includes, this.items, this.limit, this.skip, this.sys, this.total})
      : super._() {
    if (includes == null) {
      throw new BuiltValueNullFieldError('PostList', 'includes');
    }
    if (items == null) {
      throw new BuiltValueNullFieldError('PostList', 'items');
    }
    if (limit == null) {
      throw new BuiltValueNullFieldError('PostList', 'limit');
    }
    if (skip == null) {
      throw new BuiltValueNullFieldError('PostList', 'skip');
    }
    if (sys == null) {
      throw new BuiltValueNullFieldError('PostList', 'sys');
    }
    if (total == null) {
      throw new BuiltValueNullFieldError('PostList', 'total');
    }
  }

  @override
  PostList rebuild(void Function(PostListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostListBuilder toBuilder() => new PostListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostList &&
        includes == other.includes &&
        items == other.items &&
        limit == other.limit &&
        skip == other.skip &&
        sys == other.sys &&
        total == other.total;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, includes.hashCode), items.hashCode),
                    limit.hashCode),
                skip.hashCode),
            sys.hashCode),
        total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostList')
          ..add('includes', includes)
          ..add('items', items)
          ..add('limit', limit)
          ..add('skip', skip)
          ..add('sys', sys)
          ..add('total', total))
        .toString();
  }
}

class PostListBuilder implements Builder<PostList, PostListBuilder> {
  _$PostList _$v;

  BuiltListMultimap _includes;
  BuiltListMultimap get includes => _$this._includes;
  set includes(BuiltListMultimap includes) => _$this._includes = includes;

  ListBuilder<Post> _items;
  ListBuilder<Post> get items => _$this._items ??= new ListBuilder<Post>();
  set items(ListBuilder<Post> items) => _$this._items = items;

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

  PostListBuilder();

  PostListBuilder get _$this {
    if (_$v != null) {
      _includes = _$v.includes;
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
  void replace(PostList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PostList;
  }

  @override
  void update(void Function(PostListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostList build() {
    _$PostList _$result;
    try {
      _$result = _$v ??
          new _$PostList._(
              includes: includes,
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
            'PostList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
