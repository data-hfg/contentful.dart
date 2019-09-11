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
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'publishDate',
      serializers.serialize(object.publishDate,
          specifiedType: const FullType(String)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
      'tags',
      serializers.serialize(object.tags,
          specifiedType: const FullType(List, const [const FullType(String)])),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
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
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
          result.tags = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))
              as List<String>;
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

class _$PostFields extends PostFields {
  @override
  final String body;
  @override
  final String description;
  @override
  final String publishDate;
  @override
  final String slug;
  @override
  final List<String> tags;
  @override
  final String title;

  factory _$PostFields([void Function(PostFieldsBuilder) updates]) =>
      (new PostFieldsBuilder()..update(updates)).build();

  _$PostFields._(
      {this.body,
      this.description,
      this.publishDate,
      this.slug,
      this.tags,
      this.title})
      : super._() {
    if (body == null) {
      throw new BuiltValueNullFieldError('PostFields', 'body');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('PostFields', 'description');
    }
    if (publishDate == null) {
      throw new BuiltValueNullFieldError('PostFields', 'publishDate');
    }
    if (slug == null) {
      throw new BuiltValueNullFieldError('PostFields', 'slug');
    }
    if (tags == null) {
      throw new BuiltValueNullFieldError('PostFields', 'tags');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('PostFields', 'title');
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
        body == other.body &&
        description == other.description &&
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
                $jc($jc($jc(0, body.hashCode), description.hashCode),
                    publishDate.hashCode),
                slug.hashCode),
            tags.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostFields')
          ..add('body', body)
          ..add('description', description)
          ..add('publishDate', publishDate)
          ..add('slug', slug)
          ..add('tags', tags)
          ..add('title', title))
        .toString();
  }
}

class PostFieldsBuilder implements Builder<PostFields, PostFieldsBuilder> {
  _$PostFields _$v;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _publishDate;
  String get publishDate => _$this._publishDate;
  set publishDate(String publishDate) => _$this._publishDate = publishDate;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  List<String> _tags;
  List<String> get tags => _$this._tags;
  set tags(List<String> tags) => _$this._tags = tags;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  PostFieldsBuilder();

  PostFieldsBuilder get _$this {
    if (_$v != null) {
      _body = _$v.body;
      _description = _$v.description;
      _publishDate = _$v.publishDate;
      _slug = _$v.slug;
      _tags = _$v.tags;
      _title = _$v.title;
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
    final _$result = _$v ??
        new _$PostFields._(
            body: body,
            description: description,
            publishDate: publishDate,
            slug: slug,
            tags: tags,
            title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
