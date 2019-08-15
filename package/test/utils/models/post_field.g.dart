// GENERATED CODE - DO NOT MODIFY BY HAND

part of post_field;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostField> _$postFieldSerializer = new _$PostFieldSerializer();

class _$PostFieldSerializer implements StructuredSerializer<PostField> {
  @override
  final Iterable<Type> types = const [PostField, _$PostField];
  @override
  final String wireName = 'PostField';

  @override
  Iterable<Object> serialize(Serializers serializers, PostField object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    if (object.relatedPosts != null) {
      result
        ..add('relatedPosts')
        ..add(serializers.serialize(object.relatedPosts,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Post)])));
    }
    return result;
  }

  @override
  PostField deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostFieldBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'relatedPosts':
          result.relatedPosts.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Post)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$PostField extends PostField {
  @override
  final String title;
  @override
  final String id;
  @override
  final BuiltList<Post> relatedPosts;

  factory _$PostField([void Function(PostFieldBuilder) updates]) =>
      (new PostFieldBuilder()..update(updates)).build();

  _$PostField._({this.title, this.id, this.relatedPosts}) : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('PostField', 'title');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('PostField', 'id');
    }
  }

  @override
  PostField rebuild(void Function(PostFieldBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostFieldBuilder toBuilder() => new PostFieldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostField &&
        title == other.title &&
        id == other.id &&
        relatedPosts == other.relatedPosts;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, title.hashCode), id.hashCode), relatedPosts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostField')
          ..add('title', title)
          ..add('id', id)
          ..add('relatedPosts', relatedPosts))
        .toString();
  }
}

class PostFieldBuilder implements Builder<PostField, PostFieldBuilder> {
  _$PostField _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  ListBuilder<Post> _relatedPosts;
  ListBuilder<Post> get relatedPosts =>
      _$this._relatedPosts ??= new ListBuilder<Post>();
  set relatedPosts(ListBuilder<Post> relatedPosts) =>
      _$this._relatedPosts = relatedPosts;

  PostFieldBuilder();

  PostFieldBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _id = _$v.id;
      _relatedPosts = _$v.relatedPosts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostField other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PostField;
  }

  @override
  void update(void Function(PostFieldBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostField build() {
    _$PostField _$result;
    try {
      _$result = _$v ??
          new _$PostField._(
              title: title, id: id, relatedPosts: _relatedPosts?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'relatedPosts';
        _relatedPosts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostField', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
