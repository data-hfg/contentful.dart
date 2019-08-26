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
      'author',
      serializers.serialize(object.author,
          specifiedType: const FullType(SystemFields)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'heroImage',
      serializers.serialize(object.heroImage,
          specifiedType: const FullType(SystemFields)),
      'publishDate',
      serializers.serialize(object.publishDate,
          specifiedType: const FullType(String)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
      'tags',
      serializers.serialize(object.tags,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

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
        case 'author':
          result.author.replace(serializers.deserialize(value,
              specifiedType: const FullType(SystemFields)) as SystemFields);
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'heroImage':
          result.heroImage.replace(serializers.deserialize(value,
              specifiedType: const FullType(SystemFields)) as SystemFields);
          break;
        case 'publishDate':
          result.publishDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PostField extends PostField {
  @override
  final SystemFields author;
  @override
  final String body;
  @override
  final String description;
  @override
  final SystemFields heroImage;
  @override
  final String publishDate;
  @override
  final String slug;
  @override
  final BuiltList<String> tags;
  @override
  final String title;

  factory _$PostField([void Function(PostFieldBuilder) updates]) =>
      (new PostFieldBuilder()..update(updates)).build();

  _$PostField._(
      {this.author,
      this.body,
      this.description,
      this.heroImage,
      this.publishDate,
      this.slug,
      this.tags,
      this.title})
      : super._() {
    if (author == null) {
      throw new BuiltValueNullFieldError('PostField', 'author');
    }
    if (body == null) {
      throw new BuiltValueNullFieldError('PostField', 'body');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('PostField', 'description');
    }
    if (heroImage == null) {
      throw new BuiltValueNullFieldError('PostField', 'heroImage');
    }
    if (publishDate == null) {
      throw new BuiltValueNullFieldError('PostField', 'publishDate');
    }
    if (slug == null) {
      throw new BuiltValueNullFieldError('PostField', 'slug');
    }
    if (tags == null) {
      throw new BuiltValueNullFieldError('PostField', 'tags');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('PostField', 'title');
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
        author == other.author &&
        body == other.body &&
        description == other.description &&
        heroImage == other.heroImage &&
        publishDate == other.publishDate &&
        slug == other.slug &&
        tags == other.tags &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, author.hashCode), body.hashCode),
                            description.hashCode),
                        heroImage.hashCode),
                    publishDate.hashCode),
                slug.hashCode),
            tags.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostField')
          ..add('author', author)
          ..add('body', body)
          ..add('description', description)
          ..add('heroImage', heroImage)
          ..add('publishDate', publishDate)
          ..add('slug', slug)
          ..add('tags', tags)
          ..add('title', title))
        .toString();
  }
}

class PostFieldBuilder implements Builder<PostField, PostFieldBuilder> {
  _$PostField _$v;

  SystemFieldsBuilder _author;
  SystemFieldsBuilder get author =>
      _$this._author ??= new SystemFieldsBuilder();
  set author(SystemFieldsBuilder author) => _$this._author = author;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  SystemFieldsBuilder _heroImage;
  SystemFieldsBuilder get heroImage =>
      _$this._heroImage ??= new SystemFieldsBuilder();
  set heroImage(SystemFieldsBuilder heroImage) => _$this._heroImage = heroImage;

  String _publishDate;
  String get publishDate => _$this._publishDate;
  set publishDate(String publishDate) => _$this._publishDate = publishDate;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  PostFieldBuilder();

  PostFieldBuilder get _$this {
    if (_$v != null) {
      _author = _$v.author?.toBuilder();
      _body = _$v.body;
      _description = _$v.description;
      _heroImage = _$v.heroImage?.toBuilder();
      _publishDate = _$v.publishDate;
      _slug = _$v.slug;
      _tags = _$v.tags?.toBuilder();
      _title = _$v.title;
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
              author: author.build(),
              body: body,
              description: description,
              heroImage: heroImage.build(),
              publishDate: publishDate,
              slug: slug,
              tags: tags.build(),
              title: title);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'author';
        author.build();

        _$failedField = 'heroImage';
        heroImage.build();

        _$failedField = 'tags';
        tags.build();
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
