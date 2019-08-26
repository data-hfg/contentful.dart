// GENERATED CODE - DO NOT MODIFY BY HAND

part of content_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContentType> _$contentTypeSerializer = new _$ContentTypeSerializer();

class _$ContentTypeSerializer implements StructuredSerializer<ContentType> {
  @override
  final Iterable<Type> types = const [ContentType, _$ContentType];
  @override
  final String wireName = 'ContentType';

  @override
  Iterable<Object> serialize(Serializers serializers, ContentType object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'fields',
      serializers.serialize(object.fields,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Field)])),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'sys',
      serializers.serialize(object.sys,
          specifiedType: const FullType(SystemFields)),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ContentType deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContentTypeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fields':
          result.fields.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Field)]))
              as BuiltList<dynamic>);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sys':
          result.sys.replace(serializers.deserialize(value,
              specifiedType: const FullType(SystemFields)) as SystemFields);
          break;
      }
    }

    return result.build();
  }
}

class _$ContentType extends ContentType {
  @override
  final String description;
  @override
  final BuiltList<Field> fields;
  @override
  final String name;
  @override
  final SystemFields sys;
  String __contentId;
  String __type;

  factory _$ContentType([void Function(ContentTypeBuilder) updates]) =>
      (new ContentTypeBuilder()..update(updates)).build();

  _$ContentType._({this.description, this.fields, this.name, this.sys})
      : super._() {
    if (fields == null) {
      throw new BuiltValueNullFieldError('ContentType', 'fields');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('ContentType', 'name');
    }
    if (sys == null) {
      throw new BuiltValueNullFieldError('ContentType', 'sys');
    }
  }

  @override
  String get contentId => __contentId ??= super.contentId;

  @override
  String get type => __type ??= super.type;

  @override
  ContentType rebuild(void Function(ContentTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentTypeBuilder toBuilder() => new ContentTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContentType &&
        description == other.description &&
        fields == other.fields &&
        name == other.name &&
        sys == other.sys;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, description.hashCode), fields.hashCode), name.hashCode),
        sys.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContentType')
          ..add('description', description)
          ..add('fields', fields)
          ..add('name', name)
          ..add('sys', sys))
        .toString();
  }
}

class ContentTypeBuilder implements Builder<ContentType, ContentTypeBuilder> {
  _$ContentType _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ListBuilder<Field> _fields;
  ListBuilder<Field> get fields => _$this._fields ??= new ListBuilder<Field>();
  set fields(ListBuilder<Field> fields) => _$this._fields = fields;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  SystemFieldsBuilder _sys;
  SystemFieldsBuilder get sys => _$this._sys ??= new SystemFieldsBuilder();
  set sys(SystemFieldsBuilder sys) => _$this._sys = sys;

  ContentTypeBuilder();

  ContentTypeBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _fields = _$v.fields?.toBuilder();
      _name = _$v.name;
      _sys = _$v.sys?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContentType other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContentType;
  }

  @override
  void update(void Function(ContentTypeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContentType build() {
    _$ContentType _$result;
    try {
      _$result = _$v ??
          new _$ContentType._(
              description: description,
              fields: fields.build(),
              name: name,
              sys: sys.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'fields';
        fields.build();

        _$failedField = 'sys';
        sys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ContentType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
