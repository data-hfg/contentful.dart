// GENERATED CODE - DO NOT MODIFY BY HAND

part of post_fields;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostFields> _$postFieldsSerializer = new _$PostFieldsSerializer();

class _$PostFieldsSerializer implements StructuredSerializer<PostFields> {
  @override
  final Iterable<Type> types = const [PostFields, _$PostFields];
  @override
  final String wireName = 'PostFields';

  @override
  Iterable<Object> serialize(Serializers serializers, PostFields object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
      'publishDate',
      serializers.serialize(object.publishDate,
          specifiedType: const FullType(String)),
      'tags',
      serializers.serialize(object.tags,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  PostFields deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostFieldsBuilder();

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
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'publishDate':
          result.publishDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$PostFields extends PostFields {
  @override
  final String title;
  @override
  final String slug;
  @override
  final String description;
  @override
  final String body;
  @override
  final String publishDate;
  @override
  final BuiltList<String> tags;

  factory _$PostFields([void Function(PostFieldsBuilder) updates]) =>
      (new PostFieldsBuilder()..update(updates)).build();

  _$PostFields._(
      {this.title,
      this.slug,
      this.description,
      this.body,
      this.publishDate,
      this.tags})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('PostFields', 'title');
    }
    if (slug == null) {
      throw new BuiltValueNullFieldError('PostFields', 'slug');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('PostFields', 'description');
    }
    if (body == null) {
      throw new BuiltValueNullFieldError('PostFields', 'body');
    }
    if (publishDate == null) {
      throw new BuiltValueNullFieldError('PostFields', 'publishDate');
    }
    if (tags == null) {
      throw new BuiltValueNullFieldError('PostFields', 'tags');
    }
  }

  @override
  PostFields rebuild(void Function(PostFieldsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostFieldsBuilder toBuilder() => new PostFieldsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostFields &&
        title == other.title &&
        slug == other.slug &&
        description == other.description &&
        body == other.body &&
        publishDate == other.publishDate &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, title.hashCode), slug.hashCode),
                    description.hashCode),
                body.hashCode),
            publishDate.hashCode),
        tags.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostFields')
          ..add('title', title)
          ..add('slug', slug)
          ..add('description', description)
          ..add('body', body)
          ..add('publishDate', publishDate)
          ..add('tags', tags))
        .toString();
  }
}

class PostFieldsBuilder implements Builder<PostFields, PostFieldsBuilder> {
  _$PostFields _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _publishDate;
  String get publishDate => _$this._publishDate;
  set publishDate(String publishDate) => _$this._publishDate = publishDate;

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  PostFieldsBuilder();

  PostFieldsBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _slug = _$v.slug;
      _description = _$v.description;
      _body = _$v.body;
      _publishDate = _$v.publishDate;
      _tags = _$v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostFields other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PostFields;
  }

  @override
  void update(void Function(PostFieldsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostFields build() {
    _$PostFields _$result;
    try {
      _$result = _$v ??
          new _$PostFields._(
              title: title,
              slug: slug,
              description: description,
              body: body,
              publishDate: publishDate,
              tags: tags.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostFields', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
